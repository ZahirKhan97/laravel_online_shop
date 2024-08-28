<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    public function index(Request $request)
    {
        $users = User::latest();
        if (!empty($request->get('keyword'))) {
            $users = $users->where('name', 'like', '%' . $request->get('keyword') . '%');
            $users = $users->orWhere('email', 'like', '%' . $request->get('keyword') . '%');
        }
        $users = $users->paginate(10);
        return view('admin.users.list', [
            'users' => $users
        ]);
    }

    public function create()
    {
        return view('admin.users.create');
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email|unique:users,email',
            'phone' => 'required|numeric',
            'password' => 'required|min:5',
        ]);
        if ($validator->passes()) {
            $user = new User();
            $user->name = $request->name;
            $user->email = $request->email;
            $user->password = Hash::make($request->password);
            $user->phone = $request->phone;
            $user->status = $request->status;
            $user->save();
            session()->flash('success', 'User Create Successfully');
            return response()->json([
                'status' => true,
            ]);
        } else {
            return response()->json([
                'status' => false,
                'errors' => $validator->errors()
            ]);
        }
    }

    public function edit($id)
    {
        $user = User::find($id);
        if ($user == null) {
            return redirect()->route('users.index')->with('error', 'User not found');
        } else {
            return view('admin.users.edit', [
                'user' => $user
            ]);
        }
    }

    public function update($id, Request $request)
    {
        $user = User::find($id);
        if ($user == null) {
            session()->flash('error', 'User not found');
            return response()->json([
                'status' => true,
            ]);
        }
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email|unique:users,email,' . $id . 'id',
            'phone' => 'required|numeric',
        ]);
        if ($validator->passes()) {
            $user->name = $request->name;
            $user->email = $request->email;
            $user->status = $request->status;
            if ($request->password != "") {
                $user->password = Hash::make($request->password);
            }
            $user->phone = $request->phone;
            $user->save();
            session()->flash('success', 'User Update Successfully');
            return response()->json([
                'status' => true,
            ]);
        } else {
            return response()->json([
                'status' => false,
                'errors' => $validator->errors()
            ]);
        }
    }

    public function destroy($id)
    {
        $user = User::find($id);
        if ($user == null) {
            session()->flash('error', 'User not found');
            return response()->json([
                'status' => true,
            ]);
        }
        $user->delete();
        session()->flash('success', 'User deleted Successfully');
        return response()->json([
            'status' => true,
        ]);
    }
}
