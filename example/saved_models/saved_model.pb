²9
	â
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
H
ShardedFilename
basename	
shard

num_shards
filename
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.14.02v1.14.0-rc1-22-gaf24dc91b5®,
x
v1/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *
_class
	loc:@v1

v1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
	loc:@v1*
	container *
shape:

	v1/AssignAssignv1v1/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
	loc:@v1
S
v1/readIdentityv1*
T0*
_class
	loc:@v1*
_output_shapes
:
x
v2/Initializer/zerosConst*
valueB*    *
_class
	loc:@v2*
dtype0*
_output_shapes
:

v2
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
	loc:@v2*
	container *
shape:

	v2/AssignAssignv2v2/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
	loc:@v2
S
v2/readIdentityv2*
T0*
_class
	loc:@v2*
_output_shapes
:
J
add/yConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
?
addAddv1/readadd/y*
T0*
_output_shapes
:
~
AssignAssignv1add*
use_locking( *
T0*
_class
	loc:@v1*
validate_shape(*
_output_shapes
:
J
sub/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
?
subSubv2/readsub/y*
T0*
_output_shapes
:

Assign_1Assignv2sub*
use_locking( *
T0*
_class
	loc:@v2*
validate_shape(*
_output_shapes
:
$
initNoOp
^v1/Assign
^v2/Assign
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
g
save/SaveV2/tensor_namesConst*
valueBBv1Bv2*
dtype0*
_output_shapes
:
g
save/SaveV2/shape_and_slicesConst*
valueBB B *
dtype0*
_output_shapes
:
s
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesv1v2*
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_output_shapes
: *
T0*
_class
loc:@save/Const
j
save/RestoreV2/tensor_namesConst*
valueBBv1Bv2*
dtype0*
_output_shapes
:
j
save/RestoreV2/shape_and_slicesConst*
valueBB B *
dtype0*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes

::*
dtypes
2

save/AssignAssignv1save/RestoreV2*
T0*
_class
	loc:@v1*
validate_shape(*
_output_shapes
:*
use_locking(

save/Assign_1Assignv2save/RestoreV2:1*
use_locking(*
T0*
_class
	loc:@v2*
validate_shape(*
_output_shapes
:
6
save/restore_allNoOp^save/Assign^save/Assign_1
[
save_1/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
shape: *
dtype0*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_afa44a3f932e40858c823114eec2c5fd/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
i
save_1/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBv1Bv2
i
save_1/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueBB B 

save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesv1v2*
dtypes
2

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_1/ShardedFilename
£
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
N*
_output_shapes
:*
T0*

axis 

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
T0*
_output_shapes
: 
l
save_1/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBv1Bv2
l
!save_1/RestoreV2/shape_and_slicesConst*
valueBB B *
dtype0*
_output_shapes
:

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
_output_shapes

::*
dtypes
2

save_1/AssignAssignv1save_1/RestoreV2*
use_locking(*
T0*
_class
	loc:@v1*
validate_shape(*
_output_shapes
:

save_1/Assign_1Assignv2save_1/RestoreV2:1*
T0*
_class
	loc:@v2*
validate_shape(*
_output_shapes
:*
use_locking(
>
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1
1
save_1/restore_allNoOp^save_1/restore_shard "&B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"
trainable_variablesrp
6
v1:0	v1/Assign	v1/read:02v1/Initializer/zeros:08
6
v2:0	v2/Assign	v2/read:02v2/Initializer/zeros:08"
	variablesrp
6
v1:0	v1/Assign	v1/read:02v1/Initializer/zeros:08
6
v2:0	v2/Assign	v2/read:02v2/Initializer/zeros:08*
serving_default

v1
v1:0e

v2
v2:0e
inc_v1
Assign:0e
dec_v2

Assign_1:0etensorflow/serving/predict