??"
??
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??
?
conv2d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_13/kernel
}
$conv2d_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_13/kernel*&
_output_shapes
: *
dtype0
t
conv2d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_13/bias
m
"conv2d_13/bias/Read/ReadVariableOpReadVariableOpconv2d_13/bias*
_output_shapes
: *
dtype0
?
conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_14/kernel
}
$conv2d_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_14/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_14/bias
m
"conv2d_14/bias/Read/ReadVariableOpReadVariableOpconv2d_14/bias*
_output_shapes
:@*
dtype0
?
conv2d_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*!
shared_nameconv2d_15/kernel
~
$conv2d_15/kernel/Read/ReadVariableOpReadVariableOpconv2d_15/kernel*'
_output_shapes
:@?*
dtype0
u
conv2d_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_15/bias
n
"conv2d_15/bias/Read/ReadVariableOpReadVariableOpconv2d_15/bias*
_output_shapes	
:?*
dtype0
?
conv2d_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_16/kernel

$conv2d_16/kernel/Read/ReadVariableOpReadVariableOpconv2d_16/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_16/bias
n
"conv2d_16/bias/Read/ReadVariableOpReadVariableOpconv2d_16/bias*
_output_shapes	
:?*
dtype0
?
conv2d_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_17/kernel

$conv2d_17/kernel/Read/ReadVariableOpReadVariableOpconv2d_17/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_17/bias
n
"conv2d_17/bias/Read/ReadVariableOpReadVariableOpconv2d_17/bias*
_output_shapes	
:?*
dtype0
?
conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_18/kernel

$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_18/bias
n
"conv2d_18/bias/Read/ReadVariableOpReadVariableOpconv2d_18/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_2/gamma
?
/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_namebatch_normalization_2/beta
?
.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes	
:?*
dtype0
?
!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!batch_normalization_2/moving_mean
?
5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes	
:?*
dtype0
?
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*6
shared_name'%batch_normalization_2/moving_variance
?
9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes	
:?*
dtype0
z
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_4/kernel
s
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel* 
_output_shapes
:
??*
dtype0
q
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_4/bias
j
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes	
:?*
dtype0
y
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?c*
shared_namedense_5/kernel
r
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes
:	?c*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:c*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:c*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h
VariableVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0	
l

Variable_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable_1
e
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:*
dtype0	
l

Variable_2VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable_2
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:*
dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/conv2d_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_13/kernel/m
?
+Adam/conv2d_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_13/bias/m
{
)Adam/conv2d_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_14/kernel/m
?
+Adam/conv2d_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_14/bias/m
{
)Adam/conv2d_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_15/kernel/m
?
+Adam/conv2d_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_15/bias/m
|
)Adam/conv2d_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_16/kernel/m
?
+Adam/conv2d_16/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_16/bias/m
|
)Adam/conv2d_16/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_17/kernel/m
?
+Adam/conv2d_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_17/bias/m
|
)Adam/conv2d_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_18/kernel/m
?
+Adam/conv2d_18/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_18/bias/m
|
)Adam/conv2d_18/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/bias/m*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_2/gamma/m
?
6Adam/batch_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_2/gamma/m*
_output_shapes	
:?*
dtype0
?
!Adam/batch_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!Adam/batch_normalization_2/beta/m
?
5Adam/batch_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_2/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_4/kernel/m
?
)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m* 
_output_shapes
:
??*
dtype0

Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_4/bias/m
x
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?c*&
shared_nameAdam/dense_5/kernel/m
?
)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes
:	?c*
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:c*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:c*
dtype0
?
Adam/conv2d_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_13/kernel/v
?
+Adam/conv2d_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_13/bias/v
{
)Adam/conv2d_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_14/kernel/v
?
+Adam/conv2d_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_14/bias/v
{
)Adam/conv2d_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_15/kernel/v
?
+Adam/conv2d_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_15/bias/v
|
)Adam/conv2d_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_16/kernel/v
?
+Adam/conv2d_16/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_16/bias/v
|
)Adam/conv2d_16/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_17/kernel/v
?
+Adam/conv2d_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_17/bias/v
|
)Adam/conv2d_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_18/kernel/v
?
+Adam/conv2d_18/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_18/bias/v
|
)Adam/conv2d_18/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/bias/v*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_2/gamma/v
?
6Adam/batch_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_2/gamma/v*
_output_shapes	
:?*
dtype0
?
!Adam/batch_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*2
shared_name#!Adam/batch_normalization_2/beta/v
?
5Adam/batch_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_2/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*&
shared_nameAdam/dense_4/kernel/v
?
)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v* 
_output_shapes
:
??*
dtype0

Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_4/bias/v
x
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?c*&
shared_nameAdam/dense_5/kernel/v
?
)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes
:	?c*
dtype0
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:c*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
:c*
dtype0

NoOpNoOp
?x
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?w
value?wB?w B?w
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer-16
layer_with_weights-7
layer-17
layer_with_weights-8
layer-18
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
?
layer-0
layer-1
layer-2
layer-3
	variables
regularization_losses
 trainable_variables
!	keras_api

"	keras_api
h

#kernel
$bias
%	variables
&regularization_losses
'trainable_variables
(	keras_api
R
)	variables
*regularization_losses
+trainable_variables
,	keras_api
h

-kernel
.bias
/	variables
0regularization_losses
1trainable_variables
2	keras_api
R
3	variables
4regularization_losses
5trainable_variables
6	keras_api
h

7kernel
8bias
9	variables
:regularization_losses
;trainable_variables
<	keras_api
R
=	variables
>regularization_losses
?trainable_variables
@	keras_api
h

Akernel
Bbias
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
R
G	variables
Hregularization_losses
Itrainable_variables
J	keras_api
h

Kkernel
Lbias
M	variables
Nregularization_losses
Otrainable_variables
P	keras_api
R
Q	variables
Rregularization_losses
Strainable_variables
T	keras_api
h

Ukernel
Vbias
W	variables
Xregularization_losses
Ytrainable_variables
Z	keras_api
R
[	variables
\regularization_losses
]trainable_variables
^	keras_api
R
_	variables
`regularization_losses
atrainable_variables
b	keras_api
?
caxis
	dgamma
ebeta
fmoving_mean
gmoving_variance
h	variables
iregularization_losses
jtrainable_variables
k	keras_api
R
l	variables
mregularization_losses
ntrainable_variables
o	keras_api
h

pkernel
qbias
r	variables
sregularization_losses
ttrainable_variables
u	keras_api
h

vkernel
wbias
x	variables
yregularization_losses
ztrainable_variables
{	keras_api
?
|iter

}beta_1

~beta_2
	decay
?learning_rate#m?$m?-m?.m?7m?8m?Am?Bm?Km?Lm?Um?Vm?dm?em?pm?qm?vm?wm?#v?$v?-v?.v?7v?8v?Av?Bv?Kv?Lv?Uv?Vv?dv?ev?pv?qv?vv?wv?
?
#0
$1
-2
.3
74
85
A6
B7
K8
L9
U10
V11
d12
e13
f14
g15
p16
q17
v18
w19
 
?
#0
$1
-2
.3
74
85
A6
B7
K8
L9
U10
V11
d12
e13
p14
q15
v16
w17
?
	variables
?layers
?non_trainable_variables
regularization_losses
?metrics
?layer_metrics
trainable_variables
 ?layer_regularization_losses
 

	?_rng
?	keras_api

	?_rng
?	keras_api

	?_rng
?	keras_api

?	keras_api
 
 
 
?
	variables
?layers
?non_trainable_variables
regularization_losses
?metrics
?layer_metrics
 trainable_variables
 ?layer_regularization_losses
 
\Z
VARIABLE_VALUEconv2d_13/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_13/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

#0
$1
 

#0
$1
?
%	variables
?layers
?non_trainable_variables
&regularization_losses
?metrics
?layer_metrics
'trainable_variables
 ?layer_regularization_losses
 
 
 
?
)	variables
?layers
?non_trainable_variables
*regularization_losses
?metrics
?layer_metrics
+trainable_variables
 ?layer_regularization_losses
\Z
VARIABLE_VALUEconv2d_14/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_14/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

-0
.1
 

-0
.1
?
/	variables
?layers
?non_trainable_variables
0regularization_losses
?metrics
?layer_metrics
1trainable_variables
 ?layer_regularization_losses
 
 
 
?
3	variables
?layers
?non_trainable_variables
4regularization_losses
?metrics
?layer_metrics
5trainable_variables
 ?layer_regularization_losses
\Z
VARIABLE_VALUEconv2d_15/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_15/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

70
81
 

70
81
?
9	variables
?layers
?non_trainable_variables
:regularization_losses
?metrics
?layer_metrics
;trainable_variables
 ?layer_regularization_losses
 
 
 
?
=	variables
?layers
?non_trainable_variables
>regularization_losses
?metrics
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
\Z
VARIABLE_VALUEconv2d_16/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_16/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

A0
B1
 

A0
B1
?
C	variables
?layers
?non_trainable_variables
Dregularization_losses
?metrics
?layer_metrics
Etrainable_variables
 ?layer_regularization_losses
 
 
 
?
G	variables
?layers
?non_trainable_variables
Hregularization_losses
?metrics
?layer_metrics
Itrainable_variables
 ?layer_regularization_losses
\Z
VARIABLE_VALUEconv2d_17/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_17/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

K0
L1
 

K0
L1
?
M	variables
?layers
?non_trainable_variables
Nregularization_losses
?metrics
?layer_metrics
Otrainable_variables
 ?layer_regularization_losses
 
 
 
?
Q	variables
?layers
?non_trainable_variables
Rregularization_losses
?metrics
?layer_metrics
Strainable_variables
 ?layer_regularization_losses
\Z
VARIABLE_VALUEconv2d_18/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_18/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

U0
V1
 

U0
V1
?
W	variables
?layers
?non_trainable_variables
Xregularization_losses
?metrics
?layer_metrics
Ytrainable_variables
 ?layer_regularization_losses
 
 
 
?
[	variables
?layers
?non_trainable_variables
\regularization_losses
?metrics
?layer_metrics
]trainable_variables
 ?layer_regularization_losses
 
 
 
?
_	variables
?layers
?non_trainable_variables
`regularization_losses
?metrics
?layer_metrics
atrainable_variables
 ?layer_regularization_losses
 
fd
VARIABLE_VALUEbatch_normalization_2/gamma5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_2/beta4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_2/moving_mean;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_2/moving_variance?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

d0
e1
f2
g3
 

d0
e1
?
h	variables
?layers
?non_trainable_variables
iregularization_losses
?metrics
?layer_metrics
jtrainable_variables
 ?layer_regularization_losses
 
 
 
?
l	variables
?layers
?non_trainable_variables
mregularization_losses
?metrics
?layer_metrics
ntrainable_variables
 ?layer_regularization_losses
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_4/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

p0
q1
 

p0
q1
?
r	variables
?layers
?non_trainable_variables
sregularization_losses
?metrics
?layer_metrics
ttrainable_variables
 ?layer_regularization_losses
ZX
VARIABLE_VALUEdense_5/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_5/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

v0
w1
 

v0
w1
?
x	variables
?layers
?non_trainable_variables
yregularization_losses
?metrics
?layer_metrics
ztrainable_variables
 ?layer_regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18

f0
g1

?0
?1
 
 

?
_state_var
 

?
_state_var
 

?
_state_var
 
 

0
1
2
3
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

f0
g1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
XV
VARIABLE_VALUEVariable:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUE
Variable_1:layer-0/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUE
Variable_2:layer-0/layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
}
VARIABLE_VALUEAdam/conv2d_13/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_13/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_14/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_14/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_15/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_15/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_16/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_16/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_17/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_17/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_18/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_18/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_2/gamma/mQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_2/beta/mPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_13/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_13/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_14/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_14/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_15/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_15/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_16/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_16/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_17/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_17/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_18/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_18/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/batch_normalization_2/gamma/vQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/batch_normalization_2/beta/vPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
"serving_default_sequential_4_inputPlaceholder*/
_output_shapes
:?????????xx*
dtype0*$
shape:?????????xx
?
StatefulPartitionedCallStatefulPartitionedCall"serving_default_sequential_4_inputconv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasconv2d_15/kernelconv2d_15/biasconv2d_16/kernelconv2d_16/biasconv2d_17/kernelconv2d_17/biasconv2d_18/kernelconv2d_18/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_variancedense_4/kerneldense_4/biasdense_5/kerneldense_5/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????c*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_166438
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_13/kernel/Read/ReadVariableOp"conv2d_13/bias/Read/ReadVariableOp$conv2d_14/kernel/Read/ReadVariableOp"conv2d_14/bias/Read/ReadVariableOp$conv2d_15/kernel/Read/ReadVariableOp"conv2d_15/bias/Read/ReadVariableOp$conv2d_16/kernel/Read/ReadVariableOp"conv2d_16/bias/Read/ReadVariableOp$conv2d_17/kernel/Read/ReadVariableOp"conv2d_17/bias/Read/ReadVariableOp$conv2d_18/kernel/Read/ReadVariableOp"conv2d_18/bias/Read/ReadVariableOp/batch_normalization_2/gamma/Read/ReadVariableOp.batch_normalization_2/beta/Read/ReadVariableOp5batch_normalization_2/moving_mean/Read/ReadVariableOp9batch_normalization_2/moving_variance/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOpVariable_2/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_13/kernel/m/Read/ReadVariableOp)Adam/conv2d_13/bias/m/Read/ReadVariableOp+Adam/conv2d_14/kernel/m/Read/ReadVariableOp)Adam/conv2d_14/bias/m/Read/ReadVariableOp+Adam/conv2d_15/kernel/m/Read/ReadVariableOp)Adam/conv2d_15/bias/m/Read/ReadVariableOp+Adam/conv2d_16/kernel/m/Read/ReadVariableOp)Adam/conv2d_16/bias/m/Read/ReadVariableOp+Adam/conv2d_17/kernel/m/Read/ReadVariableOp)Adam/conv2d_17/bias/m/Read/ReadVariableOp+Adam/conv2d_18/kernel/m/Read/ReadVariableOp)Adam/conv2d_18/bias/m/Read/ReadVariableOp6Adam/batch_normalization_2/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_2/beta/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp+Adam/conv2d_13/kernel/v/Read/ReadVariableOp)Adam/conv2d_13/bias/v/Read/ReadVariableOp+Adam/conv2d_14/kernel/v/Read/ReadVariableOp)Adam/conv2d_14/bias/v/Read/ReadVariableOp+Adam/conv2d_15/kernel/v/Read/ReadVariableOp)Adam/conv2d_15/bias/v/Read/ReadVariableOp+Adam/conv2d_16/kernel/v/Read/ReadVariableOp)Adam/conv2d_16/bias/v/Read/ReadVariableOp+Adam/conv2d_17/kernel/v/Read/ReadVariableOp)Adam/conv2d_17/bias/v/Read/ReadVariableOp+Adam/conv2d_18/kernel/v/Read/ReadVariableOp)Adam/conv2d_18/bias/v/Read/ReadVariableOp6Adam/batch_normalization_2/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_2/beta/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOpConst*Q
TinJ
H2F				*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_167764
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasconv2d_15/kernelconv2d_15/biasconv2d_16/kernelconv2d_16/biasconv2d_17/kernelconv2d_17/biasconv2d_18/kernelconv2d_18/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_variancedense_4/kerneldense_4/biasdense_5/kerneldense_5/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariable
Variable_1
Variable_2totalcounttotal_1count_1Adam/conv2d_13/kernel/mAdam/conv2d_13/bias/mAdam/conv2d_14/kernel/mAdam/conv2d_14/bias/mAdam/conv2d_15/kernel/mAdam/conv2d_15/bias/mAdam/conv2d_16/kernel/mAdam/conv2d_16/bias/mAdam/conv2d_17/kernel/mAdam/conv2d_17/bias/mAdam/conv2d_18/kernel/mAdam/conv2d_18/bias/m"Adam/batch_normalization_2/gamma/m!Adam/batch_normalization_2/beta/mAdam/dense_4/kernel/mAdam/dense_4/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/mAdam/conv2d_13/kernel/vAdam/conv2d_13/bias/vAdam/conv2d_14/kernel/vAdam/conv2d_14/bias/vAdam/conv2d_15/kernel/vAdam/conv2d_15/bias/vAdam/conv2d_16/kernel/vAdam/conv2d_16/bias/vAdam/conv2d_17/kernel/vAdam/conv2d_17/bias/vAdam/conv2d_18/kernel/vAdam/conv2d_18/bias/v"Adam/batch_normalization_2/gamma/v!Adam/batch_normalization_2/beta/vAdam/dense_4/kernel/vAdam/dense_4/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/v*P
TinI
G2E*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_167978??
?
?
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_165982

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
q
H__inference_sequential_4_layer_call_and_return_conditional_losses_165290
random_flip_2_input
identityo
IdentityIdentityrandom_flip_2_input*
T0*/
_output_shapes
:?????????xx2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????xx:d `
/
_output_shapes
:?????????xx
-
_user_specified_namerandom_flip_2_input
?
?
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_165709

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
C__inference_dense_5_layer_call_and_return_conditional_losses_167513

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?c*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:c*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????c2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_16_layer_call_and_return_conditional_losses_167268

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
*__inference_dropout_2_layer_call_fn_167339

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1659272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
E__inference_flatten_2_layer_call_and_return_conditional_losses_166024

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

*__inference_conv2d_17_layer_call_fn_167297

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_17_layer_call_and_return_conditional_losses_1658702
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_14_layer_call_fn_165568

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_1655622
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_167428

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?S
?
H__inference_sequential_5_layer_call_and_return_conditional_losses_166340

inputs
conv2d_13_166282
conv2d_13_166284
conv2d_14_166288
conv2d_14_166290
conv2d_15_166294
conv2d_15_166296
conv2d_16_166300
conv2d_16_166302
conv2d_17_166306
conv2d_17_166308
conv2d_18_166312
conv2d_18_166314 
batch_normalization_2_166319 
batch_normalization_2_166321 
batch_normalization_2_166323 
batch_normalization_2_166325
dense_4_166329
dense_4_166331
dense_5_166334
dense_5_166336
identity??-batch_normalization_2/StatefulPartitionedCall?!conv2d_13/StatefulPartitionedCall?!conv2d_14/StatefulPartitionedCall?!conv2d_15/StatefulPartitionedCall?!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall?!conv2d_18/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?
sequential_4/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????xx* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_1655412
sequential_4/PartitionedCallm
rescaling_5/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling_5/Cast/xq
rescaling_5/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_5/Cast_1/x?
rescaling_5/mulMul%sequential_4/PartitionedCall:output:0rescaling_5/Cast/x:output:0*
T0*/
_output_shapes
:?????????xx2
rescaling_5/mul?
rescaling_5/addAddV2rescaling_5/mul:z:0rescaling_5/Cast_1/x:output:0*
T0*/
_output_shapes
:?????????xx2
rescaling_5/add?
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCallrescaling_5/add:z:0conv2d_13_166282conv2d_13_166284*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????xx *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_13_layer_call_and_return_conditional_losses_1657582#
!conv2d_13/StatefulPartitionedCall?
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<< * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_1655502"
 max_pooling2d_13/PartitionedCall?
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_14_166288conv2d_14_166290*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_14_layer_call_and_return_conditional_losses_1657862#
!conv2d_14/StatefulPartitionedCall?
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_1655622"
 max_pooling2d_14/PartitionedCall?
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_15_166294conv2d_15_166296*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_15_layer_call_and_return_conditional_losses_1658142#
!conv2d_15/StatefulPartitionedCall?
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_1655742"
 max_pooling2d_15/PartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_16_166300conv2d_16_166302*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_16_layer_call_and_return_conditional_losses_1658422#
!conv2d_16/StatefulPartitionedCall?
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_1655862"
 max_pooling2d_16/PartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_17_166306conv2d_17_166308*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_17_layer_call_and_return_conditional_losses_1658702#
!conv2d_17/StatefulPartitionedCall?
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_1655982"
 max_pooling2d_17/PartitionedCall?
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_18_166312conv2d_18_166314*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_18_layer_call_and_return_conditional_losses_1658982#
!conv2d_18/StatefulPartitionedCall?
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_1656102"
 max_pooling2d_18/PartitionedCall?
dropout_2/PartitionedCallPartitionedCall)max_pooling2d_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1659322
dropout_2/PartitionedCall?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0batch_normalization_2_166319batch_normalization_2_166321batch_normalization_2_166323batch_normalization_2_166325*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1659822/
-batch_normalization_2/StatefulPartitionedCall?
flatten_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_1660242
flatten_2/PartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_166329dense_4_166331*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_1660432!
dense_4/StatefulPartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_166334dense_5_166336*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????c*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_1660692!
dense_5/StatefulPartitionedCall?
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0.^batch_normalization_2/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????c2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????xx::::::::::::::::::::2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:W S
/
_output_shapes
:?????????xx
 
_user_specified_nameinputs
ċ
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_165286
random_flip_2_input?
;random_rotation_2_stateful_uniform_statefuluniform_resource;
7random_zoom_2_stateful_uniform_statefuluniform_resource
identity??2random_rotation_2/stateful_uniform/StatefulUniform?.random_zoom_2/stateful_uniform/StatefulUniform?
4random_flip_2/random_flip_up_down/control_dependencyIdentityrandom_flip_2_input*
T0*&
_class
loc:@random_flip_2_input*/
_output_shapes
:?????????xx26
4random_flip_2/random_flip_up_down/control_dependency?
'random_flip_2/random_flip_up_down/ShapeShape=random_flip_2/random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:2)
'random_flip_2/random_flip_up_down/Shape?
5random_flip_2/random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_flip_2/random_flip_up_down/strided_slice/stack?
7random_flip_2/random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_flip_2/random_flip_up_down/strided_slice/stack_1?
7random_flip_2/random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_flip_2/random_flip_up_down/strided_slice/stack_2?
/random_flip_2/random_flip_up_down/strided_sliceStridedSlice0random_flip_2/random_flip_up_down/Shape:output:0>random_flip_2/random_flip_up_down/strided_slice/stack:output:0@random_flip_2/random_flip_up_down/strided_slice/stack_1:output:0@random_flip_2/random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_flip_2/random_flip_up_down/strided_slice?
6random_flip_2/random_flip_up_down/random_uniform/shapePack8random_flip_2/random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:28
6random_flip_2/random_flip_up_down/random_uniform/shape?
4random_flip_2/random_flip_up_down/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4random_flip_2/random_flip_up_down/random_uniform/min?
4random_flip_2/random_flip_up_down/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4random_flip_2/random_flip_up_down/random_uniform/max?
>random_flip_2/random_flip_up_down/random_uniform/RandomUniformRandomUniform?random_flip_2/random_flip_up_down/random_uniform/shape:output:0*
T0*#
_output_shapes
:?????????*
dtype02@
>random_flip_2/random_flip_up_down/random_uniform/RandomUniform?
4random_flip_2/random_flip_up_down/random_uniform/MulMulGrandom_flip_2/random_flip_up_down/random_uniform/RandomUniform:output:0=random_flip_2/random_flip_up_down/random_uniform/max:output:0*
T0*#
_output_shapes
:?????????26
4random_flip_2/random_flip_up_down/random_uniform/Mul?
1random_flip_2/random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_2/random_flip_up_down/Reshape/shape/1?
1random_flip_2/random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_2/random_flip_up_down/Reshape/shape/2?
1random_flip_2/random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_2/random_flip_up_down/Reshape/shape/3?
/random_flip_2/random_flip_up_down/Reshape/shapePack8random_flip_2/random_flip_up_down/strided_slice:output:0:random_flip_2/random_flip_up_down/Reshape/shape/1:output:0:random_flip_2/random_flip_up_down/Reshape/shape/2:output:0:random_flip_2/random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:21
/random_flip_2/random_flip_up_down/Reshape/shape?
)random_flip_2/random_flip_up_down/ReshapeReshape8random_flip_2/random_flip_up_down/random_uniform/Mul:z:08random_flip_2/random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2+
)random_flip_2/random_flip_up_down/Reshape?
'random_flip_2/random_flip_up_down/RoundRound2random_flip_2/random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:?????????2)
'random_flip_2/random_flip_up_down/Round?
0random_flip_2/random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:22
0random_flip_2/random_flip_up_down/ReverseV2/axis?
+random_flip_2/random_flip_up_down/ReverseV2	ReverseV2=random_flip_2/random_flip_up_down/control_dependency:output:09random_flip_2/random_flip_up_down/ReverseV2/axis:output:0*
T0*/
_output_shapes
:?????????xx2-
+random_flip_2/random_flip_up_down/ReverseV2?
%random_flip_2/random_flip_up_down/mulMul+random_flip_2/random_flip_up_down/Round:y:04random_flip_2/random_flip_up_down/ReverseV2:output:0*
T0*/
_output_shapes
:?????????xx2'
%random_flip_2/random_flip_up_down/mul?
'random_flip_2/random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_flip_2/random_flip_up_down/sub/x?
%random_flip_2/random_flip_up_down/subSub0random_flip_2/random_flip_up_down/sub/x:output:0+random_flip_2/random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:?????????2'
%random_flip_2/random_flip_up_down/sub?
'random_flip_2/random_flip_up_down/mul_1Mul)random_flip_2/random_flip_up_down/sub:z:0=random_flip_2/random_flip_up_down/control_dependency:output:0*
T0*/
_output_shapes
:?????????xx2)
'random_flip_2/random_flip_up_down/mul_1?
%random_flip_2/random_flip_up_down/addAddV2)random_flip_2/random_flip_up_down/mul:z:0+random_flip_2/random_flip_up_down/mul_1:z:0*
T0*/
_output_shapes
:?????????xx2'
%random_flip_2/random_flip_up_down/add?
random_rotation_2/ShapeShape)random_flip_2/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2
random_rotation_2/Shape?
%random_rotation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_2/strided_slice/stack?
'random_rotation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice/stack_1?
'random_rotation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice/stack_2?
random_rotation_2/strided_sliceStridedSlice random_rotation_2/Shape:output:0.random_rotation_2/strided_slice/stack:output:00random_rotation_2/strided_slice/stack_1:output:00random_rotation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_2/strided_slice?
'random_rotation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice_1/stack?
)random_rotation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_1/stack_1?
)random_rotation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_1/stack_2?
!random_rotation_2/strided_slice_1StridedSlice random_rotation_2/Shape:output:00random_rotation_2/strided_slice_1/stack:output:02random_rotation_2/strided_slice_1/stack_1:output:02random_rotation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_2/strided_slice_1?
random_rotation_2/CastCast*random_rotation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_2/Cast?
'random_rotation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice_2/stack?
)random_rotation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_2/stack_1?
)random_rotation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_2/stack_2?
!random_rotation_2/strided_slice_2StridedSlice random_rotation_2/Shape:output:00random_rotation_2/strided_slice_2/stack:output:02random_rotation_2/strided_slice_2/stack_1:output:02random_rotation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_2/strided_slice_2?
random_rotation_2/Cast_1Cast*random_rotation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_2/Cast_1?
(random_rotation_2/stateful_uniform/shapePack(random_rotation_2/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_2/stateful_uniform/shape?
&random_rotation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *?ɿ2(
&random_rotation_2/stateful_uniform/min?
&random_rotation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???2(
&random_rotation_2/stateful_uniform/max?
<random_rotation_2/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2>
<random_rotation_2/stateful_uniform/StatefulUniform/algorithm?
2random_rotation_2/stateful_uniform/StatefulUniformStatefulUniform;random_rotation_2_stateful_uniform_statefuluniform_resourceErandom_rotation_2/stateful_uniform/StatefulUniform/algorithm:output:01random_rotation_2/stateful_uniform/shape:output:0*#
_output_shapes
:?????????*
shape_dtype024
2random_rotation_2/stateful_uniform/StatefulUniform?
&random_rotation_2/stateful_uniform/subSub/random_rotation_2/stateful_uniform/max:output:0/random_rotation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_2/stateful_uniform/sub?
&random_rotation_2/stateful_uniform/mulMul;random_rotation_2/stateful_uniform/StatefulUniform:output:0*random_rotation_2/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_2/stateful_uniform/mul?
"random_rotation_2/stateful_uniformAdd*random_rotation_2/stateful_uniform/mul:z:0/random_rotation_2/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2$
"random_rotation_2/stateful_uniform?
'random_rotation_2/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation_2/rotation_matrix/sub/y?
%random_rotation_2/rotation_matrix/subSubrandom_rotation_2/Cast_1:y:00random_rotation_2/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_2/rotation_matrix/sub?
%random_rotation_2/rotation_matrix/CosCos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/Cos?
)random_rotation_2/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_1/y?
'random_rotation_2/rotation_matrix/sub_1Subrandom_rotation_2/Cast_1:y:02random_rotation_2/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_1?
%random_rotation_2/rotation_matrix/mulMul)random_rotation_2/rotation_matrix/Cos:y:0+random_rotation_2/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/mul?
%random_rotation_2/rotation_matrix/SinSin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/Sin?
)random_rotation_2/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_2/y?
'random_rotation_2/rotation_matrix/sub_2Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_2?
'random_rotation_2/rotation_matrix/mul_1Mul)random_rotation_2/rotation_matrix/Sin:y:0+random_rotation_2/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/mul_1?
'random_rotation_2/rotation_matrix/sub_3Sub)random_rotation_2/rotation_matrix/mul:z:0+random_rotation_2/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/sub_3?
'random_rotation_2/rotation_matrix/sub_4Sub)random_rotation_2/rotation_matrix/sub:z:0+random_rotation_2/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/sub_4?
+random_rotation_2/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_2/rotation_matrix/truediv/y?
)random_rotation_2/rotation_matrix/truedivRealDiv+random_rotation_2/rotation_matrix/sub_4:z:04random_rotation_2/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2+
)random_rotation_2/rotation_matrix/truediv?
)random_rotation_2/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_5/y?
'random_rotation_2/rotation_matrix/sub_5Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_5?
'random_rotation_2/rotation_matrix/Sin_1Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Sin_1?
)random_rotation_2/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_6/y?
'random_rotation_2/rotation_matrix/sub_6Subrandom_rotation_2/Cast_1:y:02random_rotation_2/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_6?
'random_rotation_2/rotation_matrix/mul_2Mul+random_rotation_2/rotation_matrix/Sin_1:y:0+random_rotation_2/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/mul_2?
'random_rotation_2/rotation_matrix/Cos_1Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Cos_1?
)random_rotation_2/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_7/y?
'random_rotation_2/rotation_matrix/sub_7Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_7?
'random_rotation_2/rotation_matrix/mul_3Mul+random_rotation_2/rotation_matrix/Cos_1:y:0+random_rotation_2/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/mul_3?
%random_rotation_2/rotation_matrix/addAddV2+random_rotation_2/rotation_matrix/mul_2:z:0+random_rotation_2/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/add?
'random_rotation_2/rotation_matrix/sub_8Sub+random_rotation_2/rotation_matrix/sub_5:z:0)random_rotation_2/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/sub_8?
-random_rotation_2/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_2/rotation_matrix/truediv_1/y?
+random_rotation_2/rotation_matrix/truediv_1RealDiv+random_rotation_2/rotation_matrix/sub_8:z:06random_rotation_2/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2-
+random_rotation_2/rotation_matrix/truediv_1?
'random_rotation_2/rotation_matrix/ShapeShape&random_rotation_2/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_2/rotation_matrix/Shape?
5random_rotation_2/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_2/rotation_matrix/strided_slice/stack?
7random_rotation_2/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_2/rotation_matrix/strided_slice/stack_1?
7random_rotation_2/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_2/rotation_matrix/strided_slice/stack_2?
/random_rotation_2/rotation_matrix/strided_sliceStridedSlice0random_rotation_2/rotation_matrix/Shape:output:0>random_rotation_2/rotation_matrix/strided_slice/stack:output:0@random_rotation_2/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_2/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_2/rotation_matrix/strided_slice?
'random_rotation_2/rotation_matrix/Cos_2Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Cos_2?
7random_rotation_2/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_1/stack?
9random_rotation_2/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_1/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_1/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_1StridedSlice+random_rotation_2/rotation_matrix/Cos_2:y:0@random_rotation_2/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_1?
'random_rotation_2/rotation_matrix/Sin_2Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Sin_2?
7random_rotation_2/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_2/stack?
9random_rotation_2/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_2/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_2/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_2StridedSlice+random_rotation_2/rotation_matrix/Sin_2:y:0@random_rotation_2/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_2?
%random_rotation_2/rotation_matrix/NegNeg:random_rotation_2/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/Neg?
7random_rotation_2/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_3/stack?
9random_rotation_2/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_3/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_3/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_3StridedSlice-random_rotation_2/rotation_matrix/truediv:z:0@random_rotation_2/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_3?
'random_rotation_2/rotation_matrix/Sin_3Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Sin_3?
7random_rotation_2/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_4/stack?
9random_rotation_2/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_4/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_4/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_4StridedSlice+random_rotation_2/rotation_matrix/Sin_3:y:0@random_rotation_2/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_4?
'random_rotation_2/rotation_matrix/Cos_3Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Cos_3?
7random_rotation_2/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_5/stack?
9random_rotation_2/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_5/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_5/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_5StridedSlice+random_rotation_2/rotation_matrix/Cos_3:y:0@random_rotation_2/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_5?
7random_rotation_2/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_6/stack?
9random_rotation_2/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_6/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_6/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_6StridedSlice/random_rotation_2/rotation_matrix/truediv_1:z:0@random_rotation_2/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_6?
-random_rotation_2/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_2/rotation_matrix/zeros/mul/y?
+random_rotation_2/rotation_matrix/zeros/mulMul8random_rotation_2/rotation_matrix/strided_slice:output:06random_rotation_2/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_2/rotation_matrix/zeros/mul?
.random_rotation_2/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?20
.random_rotation_2/rotation_matrix/zeros/Less/y?
,random_rotation_2/rotation_matrix/zeros/LessLess/random_rotation_2/rotation_matrix/zeros/mul:z:07random_rotation_2/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_2/rotation_matrix/zeros/Less?
0random_rotation_2/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_2/rotation_matrix/zeros/packed/1?
.random_rotation_2/rotation_matrix/zeros/packedPack8random_rotation_2/rotation_matrix/strided_slice:output:09random_rotation_2/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_2/rotation_matrix/zeros/packed?
-random_rotation_2/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_2/rotation_matrix/zeros/Const?
'random_rotation_2/rotation_matrix/zerosFill7random_rotation_2/rotation_matrix/zeros/packed:output:06random_rotation_2/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/zeros?
-random_rotation_2/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_2/rotation_matrix/concat/axis?
(random_rotation_2/rotation_matrix/concatConcatV2:random_rotation_2/rotation_matrix/strided_slice_1:output:0)random_rotation_2/rotation_matrix/Neg:y:0:random_rotation_2/rotation_matrix/strided_slice_3:output:0:random_rotation_2/rotation_matrix/strided_slice_4:output:0:random_rotation_2/rotation_matrix/strided_slice_5:output:0:random_rotation_2/rotation_matrix/strided_slice_6:output:00random_rotation_2/rotation_matrix/zeros:output:06random_rotation_2/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2*
(random_rotation_2/rotation_matrix/concat?
!random_rotation_2/transform/ShapeShape)random_flip_2/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2#
!random_rotation_2/transform/Shape?
/random_rotation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_2/transform/strided_slice/stack?
1random_rotation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_2/transform/strided_slice/stack_1?
1random_rotation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_2/transform/strided_slice/stack_2?
)random_rotation_2/transform/strided_sliceStridedSlice*random_rotation_2/transform/Shape:output:08random_rotation_2/transform/strided_slice/stack:output:0:random_rotation_2/transform/strided_slice/stack_1:output:0:random_rotation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_2/transform/strided_slice?
&random_rotation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_2/transform/fill_value?
6random_rotation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3)random_flip_2/random_flip_up_down/add:z:01random_rotation_2/rotation_matrix/concat:output:02random_rotation_2/transform/strided_slice:output:0/random_rotation_2/transform/fill_value:output:0*/
_output_shapes
:?????????xx*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_2/transform/ImageProjectiveTransformV3?
random_zoom_2/ShapeShapeKrandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom_2/Shape?
!random_zoom_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_2/strided_slice/stack?
#random_zoom_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_2/strided_slice/stack_1?
#random_zoom_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_2/strided_slice/stack_2?
random_zoom_2/strided_sliceStridedSlicerandom_zoom_2/Shape:output:0*random_zoom_2/strided_slice/stack:output:0,random_zoom_2/strided_slice/stack_1:output:0,random_zoom_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_2/strided_slice?
#random_zoom_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_2/strided_slice_1/stack?
%random_zoom_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_2/strided_slice_1/stack_1?
%random_zoom_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_2/strided_slice_1/stack_2?
random_zoom_2/strided_slice_1StridedSlicerandom_zoom_2/Shape:output:0,random_zoom_2/strided_slice_1/stack:output:0.random_zoom_2/strided_slice_1/stack_1:output:0.random_zoom_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_2/strided_slice_1?
random_zoom_2/CastCast&random_zoom_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_2/Cast?
#random_zoom_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_2/strided_slice_2/stack?
%random_zoom_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_2/strided_slice_2/stack_1?
%random_zoom_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_2/strided_slice_2/stack_2?
random_zoom_2/strided_slice_2StridedSlicerandom_zoom_2/Shape:output:0,random_zoom_2/strided_slice_2/stack:output:0.random_zoom_2/strided_slice_2/stack_1:output:0.random_zoom_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_2/strided_slice_2?
random_zoom_2/Cast_1Cast&random_zoom_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_2/Cast_1?
&random_zoom_2/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_2/stateful_uniform/shape/1?
$random_zoom_2/stateful_uniform/shapePack$random_zoom_2/strided_slice:output:0/random_zoom_2/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_2/stateful_uniform/shape?
"random_zoom_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *???2$
"random_zoom_2/stateful_uniform/min?
"random_zoom_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *33??2$
"random_zoom_2/stateful_uniform/max?
8random_zoom_2/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_2/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_2/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_2_stateful_uniform_statefuluniform_resourceArandom_zoom_2/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_2/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_2/stateful_uniform/StatefulUniform?
"random_zoom_2/stateful_uniform/subSub+random_zoom_2/stateful_uniform/max:output:0+random_zoom_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_2/stateful_uniform/sub?
"random_zoom_2/stateful_uniform/mulMul7random_zoom_2/stateful_uniform/StatefulUniform:output:0&random_zoom_2/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_2/stateful_uniform/mul?
random_zoom_2/stateful_uniformAdd&random_zoom_2/stateful_uniform/mul:z:0+random_zoom_2/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_2/stateful_uniformx
random_zoom_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_2/concat/axis?
random_zoom_2/concatConcatV2"random_zoom_2/stateful_uniform:z:0"random_zoom_2/stateful_uniform:z:0"random_zoom_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_2/concat?
random_zoom_2/zoom_matrix/ShapeShaperandom_zoom_2/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_2/zoom_matrix/Shape?
-random_zoom_2/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_2/zoom_matrix/strided_slice/stack?
/random_zoom_2/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_2/zoom_matrix/strided_slice/stack_1?
/random_zoom_2/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_2/zoom_matrix/strided_slice/stack_2?
'random_zoom_2/zoom_matrix/strided_sliceStridedSlice(random_zoom_2/zoom_matrix/Shape:output:06random_zoom_2/zoom_matrix/strided_slice/stack:output:08random_zoom_2/zoom_matrix/strided_slice/stack_1:output:08random_zoom_2/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_2/zoom_matrix/strided_slice?
random_zoom_2/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_2/zoom_matrix/sub/y?
random_zoom_2/zoom_matrix/subSubrandom_zoom_2/Cast_1:y:0(random_zoom_2/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_2/zoom_matrix/sub?
#random_zoom_2/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_2/zoom_matrix/truediv/y?
!random_zoom_2/zoom_matrix/truedivRealDiv!random_zoom_2/zoom_matrix/sub:z:0,random_zoom_2/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_2/zoom_matrix/truediv?
/random_zoom_2/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_2/zoom_matrix/strided_slice_1/stack?
1random_zoom_2/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_2/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_2/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_2/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_2/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_2/concat:output:08random_zoom_2/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_2/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_2/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_2/zoom_matrix/strided_slice_1?
!random_zoom_2/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_2/zoom_matrix/sub_1/x?
random_zoom_2/zoom_matrix/sub_1Sub*random_zoom_2/zoom_matrix/sub_1/x:output:02random_zoom_2/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_2/zoom_matrix/sub_1?
random_zoom_2/zoom_matrix/mulMul%random_zoom_2/zoom_matrix/truediv:z:0#random_zoom_2/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_2/zoom_matrix/mul?
!random_zoom_2/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_2/zoom_matrix/sub_2/y?
random_zoom_2/zoom_matrix/sub_2Subrandom_zoom_2/Cast:y:0*random_zoom_2/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_2/zoom_matrix/sub_2?
%random_zoom_2/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_2/zoom_matrix/truediv_1/y?
#random_zoom_2/zoom_matrix/truediv_1RealDiv#random_zoom_2/zoom_matrix/sub_2:z:0.random_zoom_2/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_2/zoom_matrix/truediv_1?
/random_zoom_2/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_2/zoom_matrix/strided_slice_2/stack?
1random_zoom_2/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_2/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_2/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_2/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_2/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_2/concat:output:08random_zoom_2/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_2/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_2/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_2/zoom_matrix/strided_slice_2?
!random_zoom_2/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_2/zoom_matrix/sub_3/x?
random_zoom_2/zoom_matrix/sub_3Sub*random_zoom_2/zoom_matrix/sub_3/x:output:02random_zoom_2/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_2/zoom_matrix/sub_3?
random_zoom_2/zoom_matrix/mul_1Mul'random_zoom_2/zoom_matrix/truediv_1:z:0#random_zoom_2/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_2/zoom_matrix/mul_1?
/random_zoom_2/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_2/zoom_matrix/strided_slice_3/stack?
1random_zoom_2/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_2/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_2/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_2/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_2/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_2/concat:output:08random_zoom_2/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_2/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_2/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_2/zoom_matrix/strided_slice_3?
%random_zoom_2/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_2/zoom_matrix/zeros/mul/y?
#random_zoom_2/zoom_matrix/zeros/mulMul0random_zoom_2/zoom_matrix/strided_slice:output:0.random_zoom_2/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_2/zoom_matrix/zeros/mul?
&random_zoom_2/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_2/zoom_matrix/zeros/Less/y?
$random_zoom_2/zoom_matrix/zeros/LessLess'random_zoom_2/zoom_matrix/zeros/mul:z:0/random_zoom_2/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_2/zoom_matrix/zeros/Less?
(random_zoom_2/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_2/zoom_matrix/zeros/packed/1?
&random_zoom_2/zoom_matrix/zeros/packedPack0random_zoom_2/zoom_matrix/strided_slice:output:01random_zoom_2/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_2/zoom_matrix/zeros/packed?
%random_zoom_2/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_2/zoom_matrix/zeros/Const?
random_zoom_2/zoom_matrix/zerosFill/random_zoom_2/zoom_matrix/zeros/packed:output:0.random_zoom_2/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_2/zoom_matrix/zeros?
'random_zoom_2/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_2/zoom_matrix/zeros_1/mul/y?
%random_zoom_2/zoom_matrix/zeros_1/mulMul0random_zoom_2/zoom_matrix/strided_slice:output:00random_zoom_2/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_2/zoom_matrix/zeros_1/mul?
(random_zoom_2/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_2/zoom_matrix/zeros_1/Less/y?
&random_zoom_2/zoom_matrix/zeros_1/LessLess)random_zoom_2/zoom_matrix/zeros_1/mul:z:01random_zoom_2/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_2/zoom_matrix/zeros_1/Less?
*random_zoom_2/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_2/zoom_matrix/zeros_1/packed/1?
(random_zoom_2/zoom_matrix/zeros_1/packedPack0random_zoom_2/zoom_matrix/strided_slice:output:03random_zoom_2/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_2/zoom_matrix/zeros_1/packed?
'random_zoom_2/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_2/zoom_matrix/zeros_1/Const?
!random_zoom_2/zoom_matrix/zeros_1Fill1random_zoom_2/zoom_matrix/zeros_1/packed:output:00random_zoom_2/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_2/zoom_matrix/zeros_1?
/random_zoom_2/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_2/zoom_matrix/strided_slice_4/stack?
1random_zoom_2/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_2/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_2/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_2/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_2/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_2/concat:output:08random_zoom_2/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_2/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_2/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_2/zoom_matrix/strided_slice_4?
'random_zoom_2/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_2/zoom_matrix/zeros_2/mul/y?
%random_zoom_2/zoom_matrix/zeros_2/mulMul0random_zoom_2/zoom_matrix/strided_slice:output:00random_zoom_2/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_2/zoom_matrix/zeros_2/mul?
(random_zoom_2/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_2/zoom_matrix/zeros_2/Less/y?
&random_zoom_2/zoom_matrix/zeros_2/LessLess)random_zoom_2/zoom_matrix/zeros_2/mul:z:01random_zoom_2/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_2/zoom_matrix/zeros_2/Less?
*random_zoom_2/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_2/zoom_matrix/zeros_2/packed/1?
(random_zoom_2/zoom_matrix/zeros_2/packedPack0random_zoom_2/zoom_matrix/strided_slice:output:03random_zoom_2/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_2/zoom_matrix/zeros_2/packed?
'random_zoom_2/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_2/zoom_matrix/zeros_2/Const?
!random_zoom_2/zoom_matrix/zeros_2Fill1random_zoom_2/zoom_matrix/zeros_2/packed:output:00random_zoom_2/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_2/zoom_matrix/zeros_2?
%random_zoom_2/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_2/zoom_matrix/concat/axis?
 random_zoom_2/zoom_matrix/concatConcatV22random_zoom_2/zoom_matrix/strided_slice_3:output:0(random_zoom_2/zoom_matrix/zeros:output:0!random_zoom_2/zoom_matrix/mul:z:0*random_zoom_2/zoom_matrix/zeros_1:output:02random_zoom_2/zoom_matrix/strided_slice_4:output:0#random_zoom_2/zoom_matrix/mul_1:z:0*random_zoom_2/zoom_matrix/zeros_2:output:0.random_zoom_2/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_2/zoom_matrix/concat?
random_zoom_2/transform/ShapeShapeKrandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom_2/transform/Shape?
+random_zoom_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_2/transform/strided_slice/stack?
-random_zoom_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_2/transform/strided_slice/stack_1?
-random_zoom_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_2/transform/strided_slice/stack_2?
%random_zoom_2/transform/strided_sliceStridedSlice&random_zoom_2/transform/Shape:output:04random_zoom_2/transform/strided_slice/stack:output:06random_zoom_2/transform/strided_slice/stack_1:output:06random_zoom_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_2/transform/strided_slice?
"random_zoom_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_2/transform/fill_value?
2random_zoom_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Krandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0)random_zoom_2/zoom_matrix/concat:output:0.random_zoom_2/transform/strided_slice:output:0+random_zoom_2/transform/fill_value:output:0*/
_output_shapes
:?????????xx*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_2/transform/ImageProjectiveTransformV3?
&random_contrast_2/random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 2(
&random_contrast_2/random_uniform/shape?
$random_contrast_2/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *333?2&
$random_contrast_2/random_uniform/min?
$random_contrast_2/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ff??2&
$random_contrast_2/random_uniform/max?
.random_contrast_2/random_uniform/RandomUniformRandomUniform/random_contrast_2/random_uniform/shape:output:0*
T0*
_output_shapes
: *
dtype020
.random_contrast_2/random_uniform/RandomUniform?
$random_contrast_2/random_uniform/subSub-random_contrast_2/random_uniform/max:output:0-random_contrast_2/random_uniform/min:output:0*
T0*
_output_shapes
: 2&
$random_contrast_2/random_uniform/sub?
$random_contrast_2/random_uniform/mulMul7random_contrast_2/random_uniform/RandomUniform:output:0(random_contrast_2/random_uniform/sub:z:0*
T0*
_output_shapes
: 2&
$random_contrast_2/random_uniform/mul?
 random_contrast_2/random_uniformAdd(random_contrast_2/random_uniform/mul:z:0-random_contrast_2/random_uniform/min:output:0*
T0*
_output_shapes
: 2"
 random_contrast_2/random_uniform?
!random_contrast_2/adjust_contrastAdjustContrastv2Grandom_zoom_2/transform/ImageProjectiveTransformV3:transformed_images:0$random_contrast_2/random_uniform:z:0*/
_output_shapes
:?????????xx2#
!random_contrast_2/adjust_contrast?
*random_contrast_2/adjust_contrast/IdentityIdentity*random_contrast_2/adjust_contrast:output:0*
T0*/
_output_shapes
:?????????xx2,
*random_contrast_2/adjust_contrast/Identity?
IdentityIdentity3random_contrast_2/adjust_contrast/Identity:output:03^random_rotation_2/stateful_uniform/StatefulUniform/^random_zoom_2/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:?????????xx2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????xx::2h
2random_rotation_2/stateful_uniform/StatefulUniform2random_rotation_2/stateful_uniform/StatefulUniform2`
.random_zoom_2/stateful_uniform/StatefulUniform.random_zoom_2/stateful_uniform/StatefulUniform:d `
/
_output_shapes
:?????????xx
-
_user_specified_namerandom_flip_2_input
?

?
E__inference_conv2d_17_layer_call_and_return_conditional_losses_165870

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_165528

inputs?
;random_rotation_2_stateful_uniform_statefuluniform_resource;
7random_zoom_2_stateful_uniform_statefuluniform_resource
identity??2random_rotation_2/stateful_uniform/StatefulUniform?.random_zoom_2/stateful_uniform/StatefulUniform?
4random_flip_2/random_flip_up_down/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*/
_output_shapes
:?????????xx26
4random_flip_2/random_flip_up_down/control_dependency?
'random_flip_2/random_flip_up_down/ShapeShape=random_flip_2/random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:2)
'random_flip_2/random_flip_up_down/Shape?
5random_flip_2/random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_flip_2/random_flip_up_down/strided_slice/stack?
7random_flip_2/random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_flip_2/random_flip_up_down/strided_slice/stack_1?
7random_flip_2/random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_flip_2/random_flip_up_down/strided_slice/stack_2?
/random_flip_2/random_flip_up_down/strided_sliceStridedSlice0random_flip_2/random_flip_up_down/Shape:output:0>random_flip_2/random_flip_up_down/strided_slice/stack:output:0@random_flip_2/random_flip_up_down/strided_slice/stack_1:output:0@random_flip_2/random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_flip_2/random_flip_up_down/strided_slice?
6random_flip_2/random_flip_up_down/random_uniform/shapePack8random_flip_2/random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:28
6random_flip_2/random_flip_up_down/random_uniform/shape?
4random_flip_2/random_flip_up_down/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4random_flip_2/random_flip_up_down/random_uniform/min?
4random_flip_2/random_flip_up_down/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4random_flip_2/random_flip_up_down/random_uniform/max?
>random_flip_2/random_flip_up_down/random_uniform/RandomUniformRandomUniform?random_flip_2/random_flip_up_down/random_uniform/shape:output:0*
T0*#
_output_shapes
:?????????*
dtype02@
>random_flip_2/random_flip_up_down/random_uniform/RandomUniform?
4random_flip_2/random_flip_up_down/random_uniform/MulMulGrandom_flip_2/random_flip_up_down/random_uniform/RandomUniform:output:0=random_flip_2/random_flip_up_down/random_uniform/max:output:0*
T0*#
_output_shapes
:?????????26
4random_flip_2/random_flip_up_down/random_uniform/Mul?
1random_flip_2/random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_2/random_flip_up_down/Reshape/shape/1?
1random_flip_2/random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_2/random_flip_up_down/Reshape/shape/2?
1random_flip_2/random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_2/random_flip_up_down/Reshape/shape/3?
/random_flip_2/random_flip_up_down/Reshape/shapePack8random_flip_2/random_flip_up_down/strided_slice:output:0:random_flip_2/random_flip_up_down/Reshape/shape/1:output:0:random_flip_2/random_flip_up_down/Reshape/shape/2:output:0:random_flip_2/random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:21
/random_flip_2/random_flip_up_down/Reshape/shape?
)random_flip_2/random_flip_up_down/ReshapeReshape8random_flip_2/random_flip_up_down/random_uniform/Mul:z:08random_flip_2/random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2+
)random_flip_2/random_flip_up_down/Reshape?
'random_flip_2/random_flip_up_down/RoundRound2random_flip_2/random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:?????????2)
'random_flip_2/random_flip_up_down/Round?
0random_flip_2/random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:22
0random_flip_2/random_flip_up_down/ReverseV2/axis?
+random_flip_2/random_flip_up_down/ReverseV2	ReverseV2=random_flip_2/random_flip_up_down/control_dependency:output:09random_flip_2/random_flip_up_down/ReverseV2/axis:output:0*
T0*/
_output_shapes
:?????????xx2-
+random_flip_2/random_flip_up_down/ReverseV2?
%random_flip_2/random_flip_up_down/mulMul+random_flip_2/random_flip_up_down/Round:y:04random_flip_2/random_flip_up_down/ReverseV2:output:0*
T0*/
_output_shapes
:?????????xx2'
%random_flip_2/random_flip_up_down/mul?
'random_flip_2/random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_flip_2/random_flip_up_down/sub/x?
%random_flip_2/random_flip_up_down/subSub0random_flip_2/random_flip_up_down/sub/x:output:0+random_flip_2/random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:?????????2'
%random_flip_2/random_flip_up_down/sub?
'random_flip_2/random_flip_up_down/mul_1Mul)random_flip_2/random_flip_up_down/sub:z:0=random_flip_2/random_flip_up_down/control_dependency:output:0*
T0*/
_output_shapes
:?????????xx2)
'random_flip_2/random_flip_up_down/mul_1?
%random_flip_2/random_flip_up_down/addAddV2)random_flip_2/random_flip_up_down/mul:z:0+random_flip_2/random_flip_up_down/mul_1:z:0*
T0*/
_output_shapes
:?????????xx2'
%random_flip_2/random_flip_up_down/add?
random_rotation_2/ShapeShape)random_flip_2/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2
random_rotation_2/Shape?
%random_rotation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_2/strided_slice/stack?
'random_rotation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice/stack_1?
'random_rotation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice/stack_2?
random_rotation_2/strided_sliceStridedSlice random_rotation_2/Shape:output:0.random_rotation_2/strided_slice/stack:output:00random_rotation_2/strided_slice/stack_1:output:00random_rotation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_2/strided_slice?
'random_rotation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice_1/stack?
)random_rotation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_1/stack_1?
)random_rotation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_1/stack_2?
!random_rotation_2/strided_slice_1StridedSlice random_rotation_2/Shape:output:00random_rotation_2/strided_slice_1/stack:output:02random_rotation_2/strided_slice_1/stack_1:output:02random_rotation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_2/strided_slice_1?
random_rotation_2/CastCast*random_rotation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_2/Cast?
'random_rotation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice_2/stack?
)random_rotation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_2/stack_1?
)random_rotation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_2/stack_2?
!random_rotation_2/strided_slice_2StridedSlice random_rotation_2/Shape:output:00random_rotation_2/strided_slice_2/stack:output:02random_rotation_2/strided_slice_2/stack_1:output:02random_rotation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_2/strided_slice_2?
random_rotation_2/Cast_1Cast*random_rotation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_2/Cast_1?
(random_rotation_2/stateful_uniform/shapePack(random_rotation_2/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_2/stateful_uniform/shape?
&random_rotation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *?ɿ2(
&random_rotation_2/stateful_uniform/min?
&random_rotation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???2(
&random_rotation_2/stateful_uniform/max?
<random_rotation_2/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2>
<random_rotation_2/stateful_uniform/StatefulUniform/algorithm?
2random_rotation_2/stateful_uniform/StatefulUniformStatefulUniform;random_rotation_2_stateful_uniform_statefuluniform_resourceErandom_rotation_2/stateful_uniform/StatefulUniform/algorithm:output:01random_rotation_2/stateful_uniform/shape:output:0*#
_output_shapes
:?????????*
shape_dtype024
2random_rotation_2/stateful_uniform/StatefulUniform?
&random_rotation_2/stateful_uniform/subSub/random_rotation_2/stateful_uniform/max:output:0/random_rotation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_2/stateful_uniform/sub?
&random_rotation_2/stateful_uniform/mulMul;random_rotation_2/stateful_uniform/StatefulUniform:output:0*random_rotation_2/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_2/stateful_uniform/mul?
"random_rotation_2/stateful_uniformAdd*random_rotation_2/stateful_uniform/mul:z:0/random_rotation_2/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2$
"random_rotation_2/stateful_uniform?
'random_rotation_2/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation_2/rotation_matrix/sub/y?
%random_rotation_2/rotation_matrix/subSubrandom_rotation_2/Cast_1:y:00random_rotation_2/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_2/rotation_matrix/sub?
%random_rotation_2/rotation_matrix/CosCos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/Cos?
)random_rotation_2/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_1/y?
'random_rotation_2/rotation_matrix/sub_1Subrandom_rotation_2/Cast_1:y:02random_rotation_2/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_1?
%random_rotation_2/rotation_matrix/mulMul)random_rotation_2/rotation_matrix/Cos:y:0+random_rotation_2/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/mul?
%random_rotation_2/rotation_matrix/SinSin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/Sin?
)random_rotation_2/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_2/y?
'random_rotation_2/rotation_matrix/sub_2Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_2?
'random_rotation_2/rotation_matrix/mul_1Mul)random_rotation_2/rotation_matrix/Sin:y:0+random_rotation_2/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/mul_1?
'random_rotation_2/rotation_matrix/sub_3Sub)random_rotation_2/rotation_matrix/mul:z:0+random_rotation_2/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/sub_3?
'random_rotation_2/rotation_matrix/sub_4Sub)random_rotation_2/rotation_matrix/sub:z:0+random_rotation_2/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/sub_4?
+random_rotation_2/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_2/rotation_matrix/truediv/y?
)random_rotation_2/rotation_matrix/truedivRealDiv+random_rotation_2/rotation_matrix/sub_4:z:04random_rotation_2/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2+
)random_rotation_2/rotation_matrix/truediv?
)random_rotation_2/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_5/y?
'random_rotation_2/rotation_matrix/sub_5Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_5?
'random_rotation_2/rotation_matrix/Sin_1Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Sin_1?
)random_rotation_2/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_6/y?
'random_rotation_2/rotation_matrix/sub_6Subrandom_rotation_2/Cast_1:y:02random_rotation_2/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_6?
'random_rotation_2/rotation_matrix/mul_2Mul+random_rotation_2/rotation_matrix/Sin_1:y:0+random_rotation_2/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/mul_2?
'random_rotation_2/rotation_matrix/Cos_1Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Cos_1?
)random_rotation_2/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_7/y?
'random_rotation_2/rotation_matrix/sub_7Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_7?
'random_rotation_2/rotation_matrix/mul_3Mul+random_rotation_2/rotation_matrix/Cos_1:y:0+random_rotation_2/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/mul_3?
%random_rotation_2/rotation_matrix/addAddV2+random_rotation_2/rotation_matrix/mul_2:z:0+random_rotation_2/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/add?
'random_rotation_2/rotation_matrix/sub_8Sub+random_rotation_2/rotation_matrix/sub_5:z:0)random_rotation_2/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/sub_8?
-random_rotation_2/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_2/rotation_matrix/truediv_1/y?
+random_rotation_2/rotation_matrix/truediv_1RealDiv+random_rotation_2/rotation_matrix/sub_8:z:06random_rotation_2/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2-
+random_rotation_2/rotation_matrix/truediv_1?
'random_rotation_2/rotation_matrix/ShapeShape&random_rotation_2/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_2/rotation_matrix/Shape?
5random_rotation_2/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_2/rotation_matrix/strided_slice/stack?
7random_rotation_2/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_2/rotation_matrix/strided_slice/stack_1?
7random_rotation_2/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_2/rotation_matrix/strided_slice/stack_2?
/random_rotation_2/rotation_matrix/strided_sliceStridedSlice0random_rotation_2/rotation_matrix/Shape:output:0>random_rotation_2/rotation_matrix/strided_slice/stack:output:0@random_rotation_2/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_2/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_2/rotation_matrix/strided_slice?
'random_rotation_2/rotation_matrix/Cos_2Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Cos_2?
7random_rotation_2/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_1/stack?
9random_rotation_2/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_1/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_1/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_1StridedSlice+random_rotation_2/rotation_matrix/Cos_2:y:0@random_rotation_2/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_1?
'random_rotation_2/rotation_matrix/Sin_2Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Sin_2?
7random_rotation_2/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_2/stack?
9random_rotation_2/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_2/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_2/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_2StridedSlice+random_rotation_2/rotation_matrix/Sin_2:y:0@random_rotation_2/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_2?
%random_rotation_2/rotation_matrix/NegNeg:random_rotation_2/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/Neg?
7random_rotation_2/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_3/stack?
9random_rotation_2/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_3/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_3/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_3StridedSlice-random_rotation_2/rotation_matrix/truediv:z:0@random_rotation_2/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_3?
'random_rotation_2/rotation_matrix/Sin_3Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Sin_3?
7random_rotation_2/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_4/stack?
9random_rotation_2/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_4/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_4/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_4StridedSlice+random_rotation_2/rotation_matrix/Sin_3:y:0@random_rotation_2/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_4?
'random_rotation_2/rotation_matrix/Cos_3Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Cos_3?
7random_rotation_2/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_5/stack?
9random_rotation_2/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_5/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_5/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_5StridedSlice+random_rotation_2/rotation_matrix/Cos_3:y:0@random_rotation_2/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_5?
7random_rotation_2/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_6/stack?
9random_rotation_2/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_6/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_6/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_6StridedSlice/random_rotation_2/rotation_matrix/truediv_1:z:0@random_rotation_2/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_6?
-random_rotation_2/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_2/rotation_matrix/zeros/mul/y?
+random_rotation_2/rotation_matrix/zeros/mulMul8random_rotation_2/rotation_matrix/strided_slice:output:06random_rotation_2/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_2/rotation_matrix/zeros/mul?
.random_rotation_2/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?20
.random_rotation_2/rotation_matrix/zeros/Less/y?
,random_rotation_2/rotation_matrix/zeros/LessLess/random_rotation_2/rotation_matrix/zeros/mul:z:07random_rotation_2/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_2/rotation_matrix/zeros/Less?
0random_rotation_2/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_2/rotation_matrix/zeros/packed/1?
.random_rotation_2/rotation_matrix/zeros/packedPack8random_rotation_2/rotation_matrix/strided_slice:output:09random_rotation_2/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_2/rotation_matrix/zeros/packed?
-random_rotation_2/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_2/rotation_matrix/zeros/Const?
'random_rotation_2/rotation_matrix/zerosFill7random_rotation_2/rotation_matrix/zeros/packed:output:06random_rotation_2/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/zeros?
-random_rotation_2/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_2/rotation_matrix/concat/axis?
(random_rotation_2/rotation_matrix/concatConcatV2:random_rotation_2/rotation_matrix/strided_slice_1:output:0)random_rotation_2/rotation_matrix/Neg:y:0:random_rotation_2/rotation_matrix/strided_slice_3:output:0:random_rotation_2/rotation_matrix/strided_slice_4:output:0:random_rotation_2/rotation_matrix/strided_slice_5:output:0:random_rotation_2/rotation_matrix/strided_slice_6:output:00random_rotation_2/rotation_matrix/zeros:output:06random_rotation_2/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2*
(random_rotation_2/rotation_matrix/concat?
!random_rotation_2/transform/ShapeShape)random_flip_2/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2#
!random_rotation_2/transform/Shape?
/random_rotation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_2/transform/strided_slice/stack?
1random_rotation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_2/transform/strided_slice/stack_1?
1random_rotation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_2/transform/strided_slice/stack_2?
)random_rotation_2/transform/strided_sliceStridedSlice*random_rotation_2/transform/Shape:output:08random_rotation_2/transform/strided_slice/stack:output:0:random_rotation_2/transform/strided_slice/stack_1:output:0:random_rotation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_2/transform/strided_slice?
&random_rotation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_2/transform/fill_value?
6random_rotation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3)random_flip_2/random_flip_up_down/add:z:01random_rotation_2/rotation_matrix/concat:output:02random_rotation_2/transform/strided_slice:output:0/random_rotation_2/transform/fill_value:output:0*/
_output_shapes
:?????????xx*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_2/transform/ImageProjectiveTransformV3?
random_zoom_2/ShapeShapeKrandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom_2/Shape?
!random_zoom_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_2/strided_slice/stack?
#random_zoom_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_2/strided_slice/stack_1?
#random_zoom_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_2/strided_slice/stack_2?
random_zoom_2/strided_sliceStridedSlicerandom_zoom_2/Shape:output:0*random_zoom_2/strided_slice/stack:output:0,random_zoom_2/strided_slice/stack_1:output:0,random_zoom_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_2/strided_slice?
#random_zoom_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_2/strided_slice_1/stack?
%random_zoom_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_2/strided_slice_1/stack_1?
%random_zoom_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_2/strided_slice_1/stack_2?
random_zoom_2/strided_slice_1StridedSlicerandom_zoom_2/Shape:output:0,random_zoom_2/strided_slice_1/stack:output:0.random_zoom_2/strided_slice_1/stack_1:output:0.random_zoom_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_2/strided_slice_1?
random_zoom_2/CastCast&random_zoom_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_2/Cast?
#random_zoom_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_2/strided_slice_2/stack?
%random_zoom_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_2/strided_slice_2/stack_1?
%random_zoom_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_2/strided_slice_2/stack_2?
random_zoom_2/strided_slice_2StridedSlicerandom_zoom_2/Shape:output:0,random_zoom_2/strided_slice_2/stack:output:0.random_zoom_2/strided_slice_2/stack_1:output:0.random_zoom_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_2/strided_slice_2?
random_zoom_2/Cast_1Cast&random_zoom_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_2/Cast_1?
&random_zoom_2/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_2/stateful_uniform/shape/1?
$random_zoom_2/stateful_uniform/shapePack$random_zoom_2/strided_slice:output:0/random_zoom_2/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_2/stateful_uniform/shape?
"random_zoom_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *???2$
"random_zoom_2/stateful_uniform/min?
"random_zoom_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *33??2$
"random_zoom_2/stateful_uniform/max?
8random_zoom_2/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_2/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_2/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_2_stateful_uniform_statefuluniform_resourceArandom_zoom_2/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_2/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_2/stateful_uniform/StatefulUniform?
"random_zoom_2/stateful_uniform/subSub+random_zoom_2/stateful_uniform/max:output:0+random_zoom_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_2/stateful_uniform/sub?
"random_zoom_2/stateful_uniform/mulMul7random_zoom_2/stateful_uniform/StatefulUniform:output:0&random_zoom_2/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_2/stateful_uniform/mul?
random_zoom_2/stateful_uniformAdd&random_zoom_2/stateful_uniform/mul:z:0+random_zoom_2/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_2/stateful_uniformx
random_zoom_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_2/concat/axis?
random_zoom_2/concatConcatV2"random_zoom_2/stateful_uniform:z:0"random_zoom_2/stateful_uniform:z:0"random_zoom_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_2/concat?
random_zoom_2/zoom_matrix/ShapeShaperandom_zoom_2/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_2/zoom_matrix/Shape?
-random_zoom_2/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_2/zoom_matrix/strided_slice/stack?
/random_zoom_2/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_2/zoom_matrix/strided_slice/stack_1?
/random_zoom_2/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_2/zoom_matrix/strided_slice/stack_2?
'random_zoom_2/zoom_matrix/strided_sliceStridedSlice(random_zoom_2/zoom_matrix/Shape:output:06random_zoom_2/zoom_matrix/strided_slice/stack:output:08random_zoom_2/zoom_matrix/strided_slice/stack_1:output:08random_zoom_2/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_2/zoom_matrix/strided_slice?
random_zoom_2/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_2/zoom_matrix/sub/y?
random_zoom_2/zoom_matrix/subSubrandom_zoom_2/Cast_1:y:0(random_zoom_2/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_2/zoom_matrix/sub?
#random_zoom_2/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_2/zoom_matrix/truediv/y?
!random_zoom_2/zoom_matrix/truedivRealDiv!random_zoom_2/zoom_matrix/sub:z:0,random_zoom_2/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_2/zoom_matrix/truediv?
/random_zoom_2/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_2/zoom_matrix/strided_slice_1/stack?
1random_zoom_2/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_2/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_2/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_2/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_2/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_2/concat:output:08random_zoom_2/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_2/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_2/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_2/zoom_matrix/strided_slice_1?
!random_zoom_2/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_2/zoom_matrix/sub_1/x?
random_zoom_2/zoom_matrix/sub_1Sub*random_zoom_2/zoom_matrix/sub_1/x:output:02random_zoom_2/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_2/zoom_matrix/sub_1?
random_zoom_2/zoom_matrix/mulMul%random_zoom_2/zoom_matrix/truediv:z:0#random_zoom_2/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_2/zoom_matrix/mul?
!random_zoom_2/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_2/zoom_matrix/sub_2/y?
random_zoom_2/zoom_matrix/sub_2Subrandom_zoom_2/Cast:y:0*random_zoom_2/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_2/zoom_matrix/sub_2?
%random_zoom_2/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_2/zoom_matrix/truediv_1/y?
#random_zoom_2/zoom_matrix/truediv_1RealDiv#random_zoom_2/zoom_matrix/sub_2:z:0.random_zoom_2/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_2/zoom_matrix/truediv_1?
/random_zoom_2/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_2/zoom_matrix/strided_slice_2/stack?
1random_zoom_2/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_2/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_2/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_2/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_2/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_2/concat:output:08random_zoom_2/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_2/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_2/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_2/zoom_matrix/strided_slice_2?
!random_zoom_2/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_2/zoom_matrix/sub_3/x?
random_zoom_2/zoom_matrix/sub_3Sub*random_zoom_2/zoom_matrix/sub_3/x:output:02random_zoom_2/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_2/zoom_matrix/sub_3?
random_zoom_2/zoom_matrix/mul_1Mul'random_zoom_2/zoom_matrix/truediv_1:z:0#random_zoom_2/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_2/zoom_matrix/mul_1?
/random_zoom_2/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_2/zoom_matrix/strided_slice_3/stack?
1random_zoom_2/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_2/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_2/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_2/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_2/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_2/concat:output:08random_zoom_2/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_2/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_2/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_2/zoom_matrix/strided_slice_3?
%random_zoom_2/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_2/zoom_matrix/zeros/mul/y?
#random_zoom_2/zoom_matrix/zeros/mulMul0random_zoom_2/zoom_matrix/strided_slice:output:0.random_zoom_2/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_2/zoom_matrix/zeros/mul?
&random_zoom_2/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_2/zoom_matrix/zeros/Less/y?
$random_zoom_2/zoom_matrix/zeros/LessLess'random_zoom_2/zoom_matrix/zeros/mul:z:0/random_zoom_2/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_2/zoom_matrix/zeros/Less?
(random_zoom_2/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_2/zoom_matrix/zeros/packed/1?
&random_zoom_2/zoom_matrix/zeros/packedPack0random_zoom_2/zoom_matrix/strided_slice:output:01random_zoom_2/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_2/zoom_matrix/zeros/packed?
%random_zoom_2/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_2/zoom_matrix/zeros/Const?
random_zoom_2/zoom_matrix/zerosFill/random_zoom_2/zoom_matrix/zeros/packed:output:0.random_zoom_2/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_2/zoom_matrix/zeros?
'random_zoom_2/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_2/zoom_matrix/zeros_1/mul/y?
%random_zoom_2/zoom_matrix/zeros_1/mulMul0random_zoom_2/zoom_matrix/strided_slice:output:00random_zoom_2/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_2/zoom_matrix/zeros_1/mul?
(random_zoom_2/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_2/zoom_matrix/zeros_1/Less/y?
&random_zoom_2/zoom_matrix/zeros_1/LessLess)random_zoom_2/zoom_matrix/zeros_1/mul:z:01random_zoom_2/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_2/zoom_matrix/zeros_1/Less?
*random_zoom_2/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_2/zoom_matrix/zeros_1/packed/1?
(random_zoom_2/zoom_matrix/zeros_1/packedPack0random_zoom_2/zoom_matrix/strided_slice:output:03random_zoom_2/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_2/zoom_matrix/zeros_1/packed?
'random_zoom_2/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_2/zoom_matrix/zeros_1/Const?
!random_zoom_2/zoom_matrix/zeros_1Fill1random_zoom_2/zoom_matrix/zeros_1/packed:output:00random_zoom_2/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_2/zoom_matrix/zeros_1?
/random_zoom_2/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_2/zoom_matrix/strided_slice_4/stack?
1random_zoom_2/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_2/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_2/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_2/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_2/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_2/concat:output:08random_zoom_2/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_2/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_2/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_2/zoom_matrix/strided_slice_4?
'random_zoom_2/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_2/zoom_matrix/zeros_2/mul/y?
%random_zoom_2/zoom_matrix/zeros_2/mulMul0random_zoom_2/zoom_matrix/strided_slice:output:00random_zoom_2/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_2/zoom_matrix/zeros_2/mul?
(random_zoom_2/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_2/zoom_matrix/zeros_2/Less/y?
&random_zoom_2/zoom_matrix/zeros_2/LessLess)random_zoom_2/zoom_matrix/zeros_2/mul:z:01random_zoom_2/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_2/zoom_matrix/zeros_2/Less?
*random_zoom_2/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_2/zoom_matrix/zeros_2/packed/1?
(random_zoom_2/zoom_matrix/zeros_2/packedPack0random_zoom_2/zoom_matrix/strided_slice:output:03random_zoom_2/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_2/zoom_matrix/zeros_2/packed?
'random_zoom_2/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_2/zoom_matrix/zeros_2/Const?
!random_zoom_2/zoom_matrix/zeros_2Fill1random_zoom_2/zoom_matrix/zeros_2/packed:output:00random_zoom_2/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_2/zoom_matrix/zeros_2?
%random_zoom_2/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_2/zoom_matrix/concat/axis?
 random_zoom_2/zoom_matrix/concatConcatV22random_zoom_2/zoom_matrix/strided_slice_3:output:0(random_zoom_2/zoom_matrix/zeros:output:0!random_zoom_2/zoom_matrix/mul:z:0*random_zoom_2/zoom_matrix/zeros_1:output:02random_zoom_2/zoom_matrix/strided_slice_4:output:0#random_zoom_2/zoom_matrix/mul_1:z:0*random_zoom_2/zoom_matrix/zeros_2:output:0.random_zoom_2/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_2/zoom_matrix/concat?
random_zoom_2/transform/ShapeShapeKrandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom_2/transform/Shape?
+random_zoom_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_2/transform/strided_slice/stack?
-random_zoom_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_2/transform/strided_slice/stack_1?
-random_zoom_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_2/transform/strided_slice/stack_2?
%random_zoom_2/transform/strided_sliceStridedSlice&random_zoom_2/transform/Shape:output:04random_zoom_2/transform/strided_slice/stack:output:06random_zoom_2/transform/strided_slice/stack_1:output:06random_zoom_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_2/transform/strided_slice?
"random_zoom_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_2/transform/fill_value?
2random_zoom_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Krandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0)random_zoom_2/zoom_matrix/concat:output:0.random_zoom_2/transform/strided_slice:output:0+random_zoom_2/transform/fill_value:output:0*/
_output_shapes
:?????????xx*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_2/transform/ImageProjectiveTransformV3?
&random_contrast_2/random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 2(
&random_contrast_2/random_uniform/shape?
$random_contrast_2/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *333?2&
$random_contrast_2/random_uniform/min?
$random_contrast_2/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ff??2&
$random_contrast_2/random_uniform/max?
.random_contrast_2/random_uniform/RandomUniformRandomUniform/random_contrast_2/random_uniform/shape:output:0*
T0*
_output_shapes
: *
dtype020
.random_contrast_2/random_uniform/RandomUniform?
$random_contrast_2/random_uniform/subSub-random_contrast_2/random_uniform/max:output:0-random_contrast_2/random_uniform/min:output:0*
T0*
_output_shapes
: 2&
$random_contrast_2/random_uniform/sub?
$random_contrast_2/random_uniform/mulMul7random_contrast_2/random_uniform/RandomUniform:output:0(random_contrast_2/random_uniform/sub:z:0*
T0*
_output_shapes
: 2&
$random_contrast_2/random_uniform/mul?
 random_contrast_2/random_uniformAdd(random_contrast_2/random_uniform/mul:z:0-random_contrast_2/random_uniform/min:output:0*
T0*
_output_shapes
: 2"
 random_contrast_2/random_uniform?
!random_contrast_2/adjust_contrastAdjustContrastv2Grandom_zoom_2/transform/ImageProjectiveTransformV3:transformed_images:0$random_contrast_2/random_uniform:z:0*/
_output_shapes
:?????????xx2#
!random_contrast_2/adjust_contrast?
*random_contrast_2/adjust_contrast/IdentityIdentity*random_contrast_2/adjust_contrast:output:0*
T0*/
_output_shapes
:?????????xx2,
*random_contrast_2/adjust_contrast/Identity?
IdentityIdentity3random_contrast_2/adjust_contrast/Identity:output:03^random_rotation_2/stateful_uniform/StatefulUniform/^random_zoom_2/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:?????????xx2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????xx::2h
2random_rotation_2/stateful_uniform/StatefulUniform2random_rotation_2/stateful_uniform/StatefulUniform2`
.random_zoom_2/stateful_uniform/StatefulUniform.random_zoom_2/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:?????????xx
 
_user_specified_nameinputs
??
?
H__inference_sequential_5_layer_call_and_return_conditional_losses_166764

inputsL
Hsequential_4_random_rotation_2_stateful_uniform_statefuluniform_resourceH
Dsequential_4_random_zoom_2_stateful_uniform_statefuluniform_resource,
(conv2d_13_conv2d_readvariableop_resource-
)conv2d_13_biasadd_readvariableop_resource,
(conv2d_14_conv2d_readvariableop_resource-
)conv2d_14_biasadd_readvariableop_resource,
(conv2d_15_conv2d_readvariableop_resource-
)conv2d_15_biasadd_readvariableop_resource,
(conv2d_16_conv2d_readvariableop_resource-
)conv2d_16_biasadd_readvariableop_resource,
(conv2d_17_conv2d_readvariableop_resource-
)conv2d_17_biasadd_readvariableop_resource,
(conv2d_18_conv2d_readvariableop_resource-
)conv2d_18_biasadd_readvariableop_resource1
-batch_normalization_2_readvariableop_resource3
/batch_normalization_2_readvariableop_1_resourceB
>batch_normalization_2_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
&dense_4_matmul_readvariableop_resource+
'dense_4_biasadd_readvariableop_resource*
&dense_5_matmul_readvariableop_resource+
'dense_5_biasadd_readvariableop_resource
identity??$batch_normalization_2/AssignNewValue?&batch_normalization_2/AssignNewValue_1?5batch_normalization_2/FusedBatchNormV3/ReadVariableOp?7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_2/ReadVariableOp?&batch_normalization_2/ReadVariableOp_1? conv2d_13/BiasAdd/ReadVariableOp?conv2d_13/Conv2D/ReadVariableOp? conv2d_14/BiasAdd/ReadVariableOp?conv2d_14/Conv2D/ReadVariableOp? conv2d_15/BiasAdd/ReadVariableOp?conv2d_15/Conv2D/ReadVariableOp? conv2d_16/BiasAdd/ReadVariableOp?conv2d_16/Conv2D/ReadVariableOp? conv2d_17/BiasAdd/ReadVariableOp?conv2d_17/Conv2D/ReadVariableOp? conv2d_18/BiasAdd/ReadVariableOp?conv2d_18/Conv2D/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOp??sequential_4/random_rotation_2/stateful_uniform/StatefulUniform?;sequential_4/random_zoom_2/stateful_uniform/StatefulUniform?
Asequential_4/random_flip_2/random_flip_up_down/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*/
_output_shapes
:?????????xx2C
Asequential_4/random_flip_2/random_flip_up_down/control_dependency?
4sequential_4/random_flip_2/random_flip_up_down/ShapeShapeJsequential_4/random_flip_2/random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:26
4sequential_4/random_flip_2/random_flip_up_down/Shape?
Bsequential_4/random_flip_2/random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2D
Bsequential_4/random_flip_2/random_flip_up_down/strided_slice/stack?
Dsequential_4/random_flip_2/random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2F
Dsequential_4/random_flip_2/random_flip_up_down/strided_slice/stack_1?
Dsequential_4/random_flip_2/random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2F
Dsequential_4/random_flip_2/random_flip_up_down/strided_slice/stack_2?
<sequential_4/random_flip_2/random_flip_up_down/strided_sliceStridedSlice=sequential_4/random_flip_2/random_flip_up_down/Shape:output:0Ksequential_4/random_flip_2/random_flip_up_down/strided_slice/stack:output:0Msequential_4/random_flip_2/random_flip_up_down/strided_slice/stack_1:output:0Msequential_4/random_flip_2/random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2>
<sequential_4/random_flip_2/random_flip_up_down/strided_slice?
Csequential_4/random_flip_2/random_flip_up_down/random_uniform/shapePackEsequential_4/random_flip_2/random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:2E
Csequential_4/random_flip_2/random_flip_up_down/random_uniform/shape?
Asequential_4/random_flip_2/random_flip_up_down/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2C
Asequential_4/random_flip_2/random_flip_up_down/random_uniform/min?
Asequential_4/random_flip_2/random_flip_up_down/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2C
Asequential_4/random_flip_2/random_flip_up_down/random_uniform/max?
Ksequential_4/random_flip_2/random_flip_up_down/random_uniform/RandomUniformRandomUniformLsequential_4/random_flip_2/random_flip_up_down/random_uniform/shape:output:0*
T0*#
_output_shapes
:?????????*
dtype02M
Ksequential_4/random_flip_2/random_flip_up_down/random_uniform/RandomUniform?
Asequential_4/random_flip_2/random_flip_up_down/random_uniform/MulMulTsequential_4/random_flip_2/random_flip_up_down/random_uniform/RandomUniform:output:0Jsequential_4/random_flip_2/random_flip_up_down/random_uniform/max:output:0*
T0*#
_output_shapes
:?????????2C
Asequential_4/random_flip_2/random_flip_up_down/random_uniform/Mul?
>sequential_4/random_flip_2/random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2@
>sequential_4/random_flip_2/random_flip_up_down/Reshape/shape/1?
>sequential_4/random_flip_2/random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2@
>sequential_4/random_flip_2/random_flip_up_down/Reshape/shape/2?
>sequential_4/random_flip_2/random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2@
>sequential_4/random_flip_2/random_flip_up_down/Reshape/shape/3?
<sequential_4/random_flip_2/random_flip_up_down/Reshape/shapePackEsequential_4/random_flip_2/random_flip_up_down/strided_slice:output:0Gsequential_4/random_flip_2/random_flip_up_down/Reshape/shape/1:output:0Gsequential_4/random_flip_2/random_flip_up_down/Reshape/shape/2:output:0Gsequential_4/random_flip_2/random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2>
<sequential_4/random_flip_2/random_flip_up_down/Reshape/shape?
6sequential_4/random_flip_2/random_flip_up_down/ReshapeReshapeEsequential_4/random_flip_2/random_flip_up_down/random_uniform/Mul:z:0Esequential_4/random_flip_2/random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????28
6sequential_4/random_flip_2/random_flip_up_down/Reshape?
4sequential_4/random_flip_2/random_flip_up_down/RoundRound?sequential_4/random_flip_2/random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:?????????26
4sequential_4/random_flip_2/random_flip_up_down/Round?
=sequential_4/random_flip_2/random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2?
=sequential_4/random_flip_2/random_flip_up_down/ReverseV2/axis?
8sequential_4/random_flip_2/random_flip_up_down/ReverseV2	ReverseV2Jsequential_4/random_flip_2/random_flip_up_down/control_dependency:output:0Fsequential_4/random_flip_2/random_flip_up_down/ReverseV2/axis:output:0*
T0*/
_output_shapes
:?????????xx2:
8sequential_4/random_flip_2/random_flip_up_down/ReverseV2?
2sequential_4/random_flip_2/random_flip_up_down/mulMul8sequential_4/random_flip_2/random_flip_up_down/Round:y:0Asequential_4/random_flip_2/random_flip_up_down/ReverseV2:output:0*
T0*/
_output_shapes
:?????????xx24
2sequential_4/random_flip_2/random_flip_up_down/mul?
4sequential_4/random_flip_2/random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4sequential_4/random_flip_2/random_flip_up_down/sub/x?
2sequential_4/random_flip_2/random_flip_up_down/subSub=sequential_4/random_flip_2/random_flip_up_down/sub/x:output:08sequential_4/random_flip_2/random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:?????????24
2sequential_4/random_flip_2/random_flip_up_down/sub?
4sequential_4/random_flip_2/random_flip_up_down/mul_1Mul6sequential_4/random_flip_2/random_flip_up_down/sub:z:0Jsequential_4/random_flip_2/random_flip_up_down/control_dependency:output:0*
T0*/
_output_shapes
:?????????xx26
4sequential_4/random_flip_2/random_flip_up_down/mul_1?
2sequential_4/random_flip_2/random_flip_up_down/addAddV26sequential_4/random_flip_2/random_flip_up_down/mul:z:08sequential_4/random_flip_2/random_flip_up_down/mul_1:z:0*
T0*/
_output_shapes
:?????????xx24
2sequential_4/random_flip_2/random_flip_up_down/add?
$sequential_4/random_rotation_2/ShapeShape6sequential_4/random_flip_2/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2&
$sequential_4/random_rotation_2/Shape?
2sequential_4/random_rotation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 24
2sequential_4/random_rotation_2/strided_slice/stack?
4sequential_4/random_rotation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_4/random_rotation_2/strided_slice/stack_1?
4sequential_4/random_rotation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:26
4sequential_4/random_rotation_2/strided_slice/stack_2?
,sequential_4/random_rotation_2/strided_sliceStridedSlice-sequential_4/random_rotation_2/Shape:output:0;sequential_4/random_rotation_2/strided_slice/stack:output:0=sequential_4/random_rotation_2/strided_slice/stack_1:output:0=sequential_4/random_rotation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2.
,sequential_4/random_rotation_2/strided_slice?
4sequential_4/random_rotation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:26
4sequential_4/random_rotation_2/strided_slice_1/stack?
6sequential_4/random_rotation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_4/random_rotation_2/strided_slice_1/stack_1?
6sequential_4/random_rotation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_4/random_rotation_2/strided_slice_1/stack_2?
.sequential_4/random_rotation_2/strided_slice_1StridedSlice-sequential_4/random_rotation_2/Shape:output:0=sequential_4/random_rotation_2/strided_slice_1/stack:output:0?sequential_4/random_rotation_2/strided_slice_1/stack_1:output:0?sequential_4/random_rotation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_4/random_rotation_2/strided_slice_1?
#sequential_4/random_rotation_2/CastCast7sequential_4/random_rotation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2%
#sequential_4/random_rotation_2/Cast?
4sequential_4/random_rotation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:26
4sequential_4/random_rotation_2/strided_slice_2/stack?
6sequential_4/random_rotation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_4/random_rotation_2/strided_slice_2/stack_1?
6sequential_4/random_rotation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6sequential_4/random_rotation_2/strided_slice_2/stack_2?
.sequential_4/random_rotation_2/strided_slice_2StridedSlice-sequential_4/random_rotation_2/Shape:output:0=sequential_4/random_rotation_2/strided_slice_2/stack:output:0?sequential_4/random_rotation_2/strided_slice_2/stack_1:output:0?sequential_4/random_rotation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.sequential_4/random_rotation_2/strided_slice_2?
%sequential_4/random_rotation_2/Cast_1Cast7sequential_4/random_rotation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2'
%sequential_4/random_rotation_2/Cast_1?
5sequential_4/random_rotation_2/stateful_uniform/shapePack5sequential_4/random_rotation_2/strided_slice:output:0*
N*
T0*
_output_shapes
:27
5sequential_4/random_rotation_2/stateful_uniform/shape?
3sequential_4/random_rotation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *?ɿ25
3sequential_4/random_rotation_2/stateful_uniform/min?
3sequential_4/random_rotation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???25
3sequential_4/random_rotation_2/stateful_uniform/max?
Isequential_4/random_rotation_2/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2K
Isequential_4/random_rotation_2/stateful_uniform/StatefulUniform/algorithm?
?sequential_4/random_rotation_2/stateful_uniform/StatefulUniformStatefulUniformHsequential_4_random_rotation_2_stateful_uniform_statefuluniform_resourceRsequential_4/random_rotation_2/stateful_uniform/StatefulUniform/algorithm:output:0>sequential_4/random_rotation_2/stateful_uniform/shape:output:0*#
_output_shapes
:?????????*
shape_dtype02A
?sequential_4/random_rotation_2/stateful_uniform/StatefulUniform?
3sequential_4/random_rotation_2/stateful_uniform/subSub<sequential_4/random_rotation_2/stateful_uniform/max:output:0<sequential_4/random_rotation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: 25
3sequential_4/random_rotation_2/stateful_uniform/sub?
3sequential_4/random_rotation_2/stateful_uniform/mulMulHsequential_4/random_rotation_2/stateful_uniform/StatefulUniform:output:07sequential_4/random_rotation_2/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????25
3sequential_4/random_rotation_2/stateful_uniform/mul?
/sequential_4/random_rotation_2/stateful_uniformAdd7sequential_4/random_rotation_2/stateful_uniform/mul:z:0<sequential_4/random_rotation_2/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????21
/sequential_4/random_rotation_2/stateful_uniform?
4sequential_4/random_rotation_2/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4sequential_4/random_rotation_2/rotation_matrix/sub/y?
2sequential_4/random_rotation_2/rotation_matrix/subSub)sequential_4/random_rotation_2/Cast_1:y:0=sequential_4/random_rotation_2/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 24
2sequential_4/random_rotation_2/rotation_matrix/sub?
2sequential_4/random_rotation_2/rotation_matrix/CosCos3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????24
2sequential_4/random_rotation_2/rotation_matrix/Cos?
6sequential_4/random_rotation_2/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6sequential_4/random_rotation_2/rotation_matrix/sub_1/y?
4sequential_4/random_rotation_2/rotation_matrix/sub_1Sub)sequential_4/random_rotation_2/Cast_1:y:0?sequential_4/random_rotation_2/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 26
4sequential_4/random_rotation_2/rotation_matrix/sub_1?
2sequential_4/random_rotation_2/rotation_matrix/mulMul6sequential_4/random_rotation_2/rotation_matrix/Cos:y:08sequential_4/random_rotation_2/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????24
2sequential_4/random_rotation_2/rotation_matrix/mul?
2sequential_4/random_rotation_2/rotation_matrix/SinSin3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????24
2sequential_4/random_rotation_2/rotation_matrix/Sin?
6sequential_4/random_rotation_2/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6sequential_4/random_rotation_2/rotation_matrix/sub_2/y?
4sequential_4/random_rotation_2/rotation_matrix/sub_2Sub'sequential_4/random_rotation_2/Cast:y:0?sequential_4/random_rotation_2/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 26
4sequential_4/random_rotation_2/rotation_matrix/sub_2?
4sequential_4/random_rotation_2/rotation_matrix/mul_1Mul6sequential_4/random_rotation_2/rotation_matrix/Sin:y:08sequential_4/random_rotation_2/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????26
4sequential_4/random_rotation_2/rotation_matrix/mul_1?
4sequential_4/random_rotation_2/rotation_matrix/sub_3Sub6sequential_4/random_rotation_2/rotation_matrix/mul:z:08sequential_4/random_rotation_2/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????26
4sequential_4/random_rotation_2/rotation_matrix/sub_3?
4sequential_4/random_rotation_2/rotation_matrix/sub_4Sub6sequential_4/random_rotation_2/rotation_matrix/sub:z:08sequential_4/random_rotation_2/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????26
4sequential_4/random_rotation_2/rotation_matrix/sub_4?
8sequential_4/random_rotation_2/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2:
8sequential_4/random_rotation_2/rotation_matrix/truediv/y?
6sequential_4/random_rotation_2/rotation_matrix/truedivRealDiv8sequential_4/random_rotation_2/rotation_matrix/sub_4:z:0Asequential_4/random_rotation_2/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????28
6sequential_4/random_rotation_2/rotation_matrix/truediv?
6sequential_4/random_rotation_2/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6sequential_4/random_rotation_2/rotation_matrix/sub_5/y?
4sequential_4/random_rotation_2/rotation_matrix/sub_5Sub'sequential_4/random_rotation_2/Cast:y:0?sequential_4/random_rotation_2/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 26
4sequential_4/random_rotation_2/rotation_matrix/sub_5?
4sequential_4/random_rotation_2/rotation_matrix/Sin_1Sin3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????26
4sequential_4/random_rotation_2/rotation_matrix/Sin_1?
6sequential_4/random_rotation_2/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6sequential_4/random_rotation_2/rotation_matrix/sub_6/y?
4sequential_4/random_rotation_2/rotation_matrix/sub_6Sub)sequential_4/random_rotation_2/Cast_1:y:0?sequential_4/random_rotation_2/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 26
4sequential_4/random_rotation_2/rotation_matrix/sub_6?
4sequential_4/random_rotation_2/rotation_matrix/mul_2Mul8sequential_4/random_rotation_2/rotation_matrix/Sin_1:y:08sequential_4/random_rotation_2/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????26
4sequential_4/random_rotation_2/rotation_matrix/mul_2?
4sequential_4/random_rotation_2/rotation_matrix/Cos_1Cos3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????26
4sequential_4/random_rotation_2/rotation_matrix/Cos_1?
6sequential_4/random_rotation_2/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6sequential_4/random_rotation_2/rotation_matrix/sub_7/y?
4sequential_4/random_rotation_2/rotation_matrix/sub_7Sub'sequential_4/random_rotation_2/Cast:y:0?sequential_4/random_rotation_2/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 26
4sequential_4/random_rotation_2/rotation_matrix/sub_7?
4sequential_4/random_rotation_2/rotation_matrix/mul_3Mul8sequential_4/random_rotation_2/rotation_matrix/Cos_1:y:08sequential_4/random_rotation_2/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????26
4sequential_4/random_rotation_2/rotation_matrix/mul_3?
2sequential_4/random_rotation_2/rotation_matrix/addAddV28sequential_4/random_rotation_2/rotation_matrix/mul_2:z:08sequential_4/random_rotation_2/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????24
2sequential_4/random_rotation_2/rotation_matrix/add?
4sequential_4/random_rotation_2/rotation_matrix/sub_8Sub8sequential_4/random_rotation_2/rotation_matrix/sub_5:z:06sequential_4/random_rotation_2/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????26
4sequential_4/random_rotation_2/rotation_matrix/sub_8?
:sequential_4/random_rotation_2/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2<
:sequential_4/random_rotation_2/rotation_matrix/truediv_1/y?
8sequential_4/random_rotation_2/rotation_matrix/truediv_1RealDiv8sequential_4/random_rotation_2/rotation_matrix/sub_8:z:0Csequential_4/random_rotation_2/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2:
8sequential_4/random_rotation_2/rotation_matrix/truediv_1?
4sequential_4/random_rotation_2/rotation_matrix/ShapeShape3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*
_output_shapes
:26
4sequential_4/random_rotation_2/rotation_matrix/Shape?
Bsequential_4/random_rotation_2/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2D
Bsequential_4/random_rotation_2/rotation_matrix/strided_slice/stack?
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2F
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice/stack_1?
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2F
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice/stack_2?
<sequential_4/random_rotation_2/rotation_matrix/strided_sliceStridedSlice=sequential_4/random_rotation_2/rotation_matrix/Shape:output:0Ksequential_4/random_rotation_2/rotation_matrix/strided_slice/stack:output:0Msequential_4/random_rotation_2/rotation_matrix/strided_slice/stack_1:output:0Msequential_4/random_rotation_2/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2>
<sequential_4/random_rotation_2/rotation_matrix/strided_slice?
4sequential_4/random_rotation_2/rotation_matrix/Cos_2Cos3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????26
4sequential_4/random_rotation_2/rotation_matrix/Cos_2?
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_1/stack?
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_1/stack_1?
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_1/stack_2?
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_1StridedSlice8sequential_4/random_rotation_2/rotation_matrix/Cos_2:y:0Msequential_4/random_rotation_2/rotation_matrix/strided_slice_1/stack:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_1/stack_1:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2@
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_1?
4sequential_4/random_rotation_2/rotation_matrix/Sin_2Sin3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????26
4sequential_4/random_rotation_2/rotation_matrix/Sin_2?
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_2/stack?
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_2/stack_1?
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_2/stack_2?
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_2StridedSlice8sequential_4/random_rotation_2/rotation_matrix/Sin_2:y:0Msequential_4/random_rotation_2/rotation_matrix/strided_slice_2/stack:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_2/stack_1:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2@
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_2?
2sequential_4/random_rotation_2/rotation_matrix/NegNegGsequential_4/random_rotation_2/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????24
2sequential_4/random_rotation_2/rotation_matrix/Neg?
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_3/stack?
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_3/stack_1?
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_3/stack_2?
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_3StridedSlice:sequential_4/random_rotation_2/rotation_matrix/truediv:z:0Msequential_4/random_rotation_2/rotation_matrix/strided_slice_3/stack:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_3/stack_1:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2@
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_3?
4sequential_4/random_rotation_2/rotation_matrix/Sin_3Sin3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????26
4sequential_4/random_rotation_2/rotation_matrix/Sin_3?
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_4/stack?
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_4/stack_1?
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_4/stack_2?
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_4StridedSlice8sequential_4/random_rotation_2/rotation_matrix/Sin_3:y:0Msequential_4/random_rotation_2/rotation_matrix/strided_slice_4/stack:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_4/stack_1:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2@
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_4?
4sequential_4/random_rotation_2/rotation_matrix/Cos_3Cos3sequential_4/random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????26
4sequential_4/random_rotation_2/rotation_matrix/Cos_3?
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_5/stack?
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_5/stack_1?
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_5/stack_2?
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_5StridedSlice8sequential_4/random_rotation_2/rotation_matrix/Cos_3:y:0Msequential_4/random_rotation_2/rotation_matrix/strided_slice_5/stack:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_5/stack_1:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2@
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_5?
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2F
Dsequential_4/random_rotation_2/rotation_matrix/strided_slice_6/stack?
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2H
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_6/stack_1?
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2H
Fsequential_4/random_rotation_2/rotation_matrix/strided_slice_6/stack_2?
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_6StridedSlice<sequential_4/random_rotation_2/rotation_matrix/truediv_1:z:0Msequential_4/random_rotation_2/rotation_matrix/strided_slice_6/stack:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_6/stack_1:output:0Osequential_4/random_rotation_2/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask2@
>sequential_4/random_rotation_2/rotation_matrix/strided_slice_6?
:sequential_4/random_rotation_2/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2<
:sequential_4/random_rotation_2/rotation_matrix/zeros/mul/y?
8sequential_4/random_rotation_2/rotation_matrix/zeros/mulMulEsequential_4/random_rotation_2/rotation_matrix/strided_slice:output:0Csequential_4/random_rotation_2/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2:
8sequential_4/random_rotation_2/rotation_matrix/zeros/mul?
;sequential_4/random_rotation_2/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2=
;sequential_4/random_rotation_2/rotation_matrix/zeros/Less/y?
9sequential_4/random_rotation_2/rotation_matrix/zeros/LessLess<sequential_4/random_rotation_2/rotation_matrix/zeros/mul:z:0Dsequential_4/random_rotation_2/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2;
9sequential_4/random_rotation_2/rotation_matrix/zeros/Less?
=sequential_4/random_rotation_2/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2?
=sequential_4/random_rotation_2/rotation_matrix/zeros/packed/1?
;sequential_4/random_rotation_2/rotation_matrix/zeros/packedPackEsequential_4/random_rotation_2/rotation_matrix/strided_slice:output:0Fsequential_4/random_rotation_2/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2=
;sequential_4/random_rotation_2/rotation_matrix/zeros/packed?
:sequential_4/random_rotation_2/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2<
:sequential_4/random_rotation_2/rotation_matrix/zeros/Const?
4sequential_4/random_rotation_2/rotation_matrix/zerosFillDsequential_4/random_rotation_2/rotation_matrix/zeros/packed:output:0Csequential_4/random_rotation_2/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????26
4sequential_4/random_rotation_2/rotation_matrix/zeros?
:sequential_4/random_rotation_2/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2<
:sequential_4/random_rotation_2/rotation_matrix/concat/axis?
5sequential_4/random_rotation_2/rotation_matrix/concatConcatV2Gsequential_4/random_rotation_2/rotation_matrix/strided_slice_1:output:06sequential_4/random_rotation_2/rotation_matrix/Neg:y:0Gsequential_4/random_rotation_2/rotation_matrix/strided_slice_3:output:0Gsequential_4/random_rotation_2/rotation_matrix/strided_slice_4:output:0Gsequential_4/random_rotation_2/rotation_matrix/strided_slice_5:output:0Gsequential_4/random_rotation_2/rotation_matrix/strided_slice_6:output:0=sequential_4/random_rotation_2/rotation_matrix/zeros:output:0Csequential_4/random_rotation_2/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????27
5sequential_4/random_rotation_2/rotation_matrix/concat?
.sequential_4/random_rotation_2/transform/ShapeShape6sequential_4/random_flip_2/random_flip_up_down/add:z:0*
T0*
_output_shapes
:20
.sequential_4/random_rotation_2/transform/Shape?
<sequential_4/random_rotation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_4/random_rotation_2/transform/strided_slice/stack?
>sequential_4/random_rotation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_4/random_rotation_2/transform/strided_slice/stack_1?
>sequential_4/random_rotation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_4/random_rotation_2/transform/strided_slice/stack_2?
6sequential_4/random_rotation_2/transform/strided_sliceStridedSlice7sequential_4/random_rotation_2/transform/Shape:output:0Esequential_4/random_rotation_2/transform/strided_slice/stack:output:0Gsequential_4/random_rotation_2/transform/strided_slice/stack_1:output:0Gsequential_4/random_rotation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:28
6sequential_4/random_rotation_2/transform/strided_slice?
3sequential_4/random_rotation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    25
3sequential_4/random_rotation_2/transform/fill_value?
Csequential_4/random_rotation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV36sequential_4/random_flip_2/random_flip_up_down/add:z:0>sequential_4/random_rotation_2/rotation_matrix/concat:output:0?sequential_4/random_rotation_2/transform/strided_slice:output:0<sequential_4/random_rotation_2/transform/fill_value:output:0*/
_output_shapes
:?????????xx*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2E
Csequential_4/random_rotation_2/transform/ImageProjectiveTransformV3?
 sequential_4/random_zoom_2/ShapeShapeXsequential_4/random_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2"
 sequential_4/random_zoom_2/Shape?
.sequential_4/random_zoom_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_4/random_zoom_2/strided_slice/stack?
0sequential_4/random_zoom_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_4/random_zoom_2/strided_slice/stack_1?
0sequential_4/random_zoom_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0sequential_4/random_zoom_2/strided_slice/stack_2?
(sequential_4/random_zoom_2/strided_sliceStridedSlice)sequential_4/random_zoom_2/Shape:output:07sequential_4/random_zoom_2/strided_slice/stack:output:09sequential_4/random_zoom_2/strided_slice/stack_1:output:09sequential_4/random_zoom_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(sequential_4/random_zoom_2/strided_slice?
0sequential_4/random_zoom_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0sequential_4/random_zoom_2/strided_slice_1/stack?
2sequential_4/random_zoom_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_4/random_zoom_2/strided_slice_1/stack_1?
2sequential_4/random_zoom_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_4/random_zoom_2/strided_slice_1/stack_2?
*sequential_4/random_zoom_2/strided_slice_1StridedSlice)sequential_4/random_zoom_2/Shape:output:09sequential_4/random_zoom_2/strided_slice_1/stack:output:0;sequential_4/random_zoom_2/strided_slice_1/stack_1:output:0;sequential_4/random_zoom_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*sequential_4/random_zoom_2/strided_slice_1?
sequential_4/random_zoom_2/CastCast3sequential_4/random_zoom_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
sequential_4/random_zoom_2/Cast?
0sequential_4/random_zoom_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:22
0sequential_4/random_zoom_2/strided_slice_2/stack?
2sequential_4/random_zoom_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_4/random_zoom_2/strided_slice_2/stack_1?
2sequential_4/random_zoom_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2sequential_4/random_zoom_2/strided_slice_2/stack_2?
*sequential_4/random_zoom_2/strided_slice_2StridedSlice)sequential_4/random_zoom_2/Shape:output:09sequential_4/random_zoom_2/strided_slice_2/stack:output:0;sequential_4/random_zoom_2/strided_slice_2/stack_1:output:0;sequential_4/random_zoom_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*sequential_4/random_zoom_2/strided_slice_2?
!sequential_4/random_zoom_2/Cast_1Cast3sequential_4/random_zoom_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!sequential_4/random_zoom_2/Cast_1?
3sequential_4/random_zoom_2/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :25
3sequential_4/random_zoom_2/stateful_uniform/shape/1?
1sequential_4/random_zoom_2/stateful_uniform/shapePack1sequential_4/random_zoom_2/strided_slice:output:0<sequential_4/random_zoom_2/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:23
1sequential_4/random_zoom_2/stateful_uniform/shape?
/sequential_4/random_zoom_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *???21
/sequential_4/random_zoom_2/stateful_uniform/min?
/sequential_4/random_zoom_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *33??21
/sequential_4/random_zoom_2/stateful_uniform/max?
Esequential_4/random_zoom_2/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2G
Esequential_4/random_zoom_2/stateful_uniform/StatefulUniform/algorithm?
;sequential_4/random_zoom_2/stateful_uniform/StatefulUniformStatefulUniformDsequential_4_random_zoom_2_stateful_uniform_statefuluniform_resourceNsequential_4/random_zoom_2/stateful_uniform/StatefulUniform/algorithm:output:0:sequential_4/random_zoom_2/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype02=
;sequential_4/random_zoom_2/stateful_uniform/StatefulUniform?
/sequential_4/random_zoom_2/stateful_uniform/subSub8sequential_4/random_zoom_2/stateful_uniform/max:output:08sequential_4/random_zoom_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: 21
/sequential_4/random_zoom_2/stateful_uniform/sub?
/sequential_4/random_zoom_2/stateful_uniform/mulMulDsequential_4/random_zoom_2/stateful_uniform/StatefulUniform:output:03sequential_4/random_zoom_2/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????21
/sequential_4/random_zoom_2/stateful_uniform/mul?
+sequential_4/random_zoom_2/stateful_uniformAdd3sequential_4/random_zoom_2/stateful_uniform/mul:z:08sequential_4/random_zoom_2/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2-
+sequential_4/random_zoom_2/stateful_uniform?
&sequential_4/random_zoom_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_4/random_zoom_2/concat/axis?
!sequential_4/random_zoom_2/concatConcatV2/sequential_4/random_zoom_2/stateful_uniform:z:0/sequential_4/random_zoom_2/stateful_uniform:z:0/sequential_4/random_zoom_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2#
!sequential_4/random_zoom_2/concat?
,sequential_4/random_zoom_2/zoom_matrix/ShapeShape*sequential_4/random_zoom_2/concat:output:0*
T0*
_output_shapes
:2.
,sequential_4/random_zoom_2/zoom_matrix/Shape?
:sequential_4/random_zoom_2/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2<
:sequential_4/random_zoom_2/zoom_matrix/strided_slice/stack?
<sequential_4/random_zoom_2/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_4/random_zoom_2/zoom_matrix/strided_slice/stack_1?
<sequential_4/random_zoom_2/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<sequential_4/random_zoom_2/zoom_matrix/strided_slice/stack_2?
4sequential_4/random_zoom_2/zoom_matrix/strided_sliceStridedSlice5sequential_4/random_zoom_2/zoom_matrix/Shape:output:0Csequential_4/random_zoom_2/zoom_matrix/strided_slice/stack:output:0Esequential_4/random_zoom_2/zoom_matrix/strided_slice/stack_1:output:0Esequential_4/random_zoom_2/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4sequential_4/random_zoom_2/zoom_matrix/strided_slice?
,sequential_4/random_zoom_2/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,sequential_4/random_zoom_2/zoom_matrix/sub/y?
*sequential_4/random_zoom_2/zoom_matrix/subSub%sequential_4/random_zoom_2/Cast_1:y:05sequential_4/random_zoom_2/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2,
*sequential_4/random_zoom_2/zoom_matrix/sub?
0sequential_4/random_zoom_2/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @22
0sequential_4/random_zoom_2/zoom_matrix/truediv/y?
.sequential_4/random_zoom_2/zoom_matrix/truedivRealDiv.sequential_4/random_zoom_2/zoom_matrix/sub:z:09sequential_4/random_zoom_2/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 20
.sequential_4/random_zoom_2/zoom_matrix/truediv?
<sequential_4/random_zoom_2/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2>
<sequential_4/random_zoom_2/zoom_matrix/strided_slice_1/stack?
>sequential_4/random_zoom_2/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2@
>sequential_4/random_zoom_2/zoom_matrix/strided_slice_1/stack_1?
>sequential_4/random_zoom_2/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2@
>sequential_4/random_zoom_2/zoom_matrix/strided_slice_1/stack_2?
6sequential_4/random_zoom_2/zoom_matrix/strided_slice_1StridedSlice*sequential_4/random_zoom_2/concat:output:0Esequential_4/random_zoom_2/zoom_matrix/strided_slice_1/stack:output:0Gsequential_4/random_zoom_2/zoom_matrix/strided_slice_1/stack_1:output:0Gsequential_4/random_zoom_2/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask28
6sequential_4/random_zoom_2/zoom_matrix/strided_slice_1?
.sequential_4/random_zoom_2/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??20
.sequential_4/random_zoom_2/zoom_matrix/sub_1/x?
,sequential_4/random_zoom_2/zoom_matrix/sub_1Sub7sequential_4/random_zoom_2/zoom_matrix/sub_1/x:output:0?sequential_4/random_zoom_2/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2.
,sequential_4/random_zoom_2/zoom_matrix/sub_1?
*sequential_4/random_zoom_2/zoom_matrix/mulMul2sequential_4/random_zoom_2/zoom_matrix/truediv:z:00sequential_4/random_zoom_2/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2,
*sequential_4/random_zoom_2/zoom_matrix/mul?
.sequential_4/random_zoom_2/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??20
.sequential_4/random_zoom_2/zoom_matrix/sub_2/y?
,sequential_4/random_zoom_2/zoom_matrix/sub_2Sub#sequential_4/random_zoom_2/Cast:y:07sequential_4/random_zoom_2/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2.
,sequential_4/random_zoom_2/zoom_matrix/sub_2?
2sequential_4/random_zoom_2/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @24
2sequential_4/random_zoom_2/zoom_matrix/truediv_1/y?
0sequential_4/random_zoom_2/zoom_matrix/truediv_1RealDiv0sequential_4/random_zoom_2/zoom_matrix/sub_2:z:0;sequential_4/random_zoom_2/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 22
0sequential_4/random_zoom_2/zoom_matrix/truediv_1?
<sequential_4/random_zoom_2/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2>
<sequential_4/random_zoom_2/zoom_matrix/strided_slice_2/stack?
>sequential_4/random_zoom_2/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2@
>sequential_4/random_zoom_2/zoom_matrix/strided_slice_2/stack_1?
>sequential_4/random_zoom_2/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2@
>sequential_4/random_zoom_2/zoom_matrix/strided_slice_2/stack_2?
6sequential_4/random_zoom_2/zoom_matrix/strided_slice_2StridedSlice*sequential_4/random_zoom_2/concat:output:0Esequential_4/random_zoom_2/zoom_matrix/strided_slice_2/stack:output:0Gsequential_4/random_zoom_2/zoom_matrix/strided_slice_2/stack_1:output:0Gsequential_4/random_zoom_2/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask28
6sequential_4/random_zoom_2/zoom_matrix/strided_slice_2?
.sequential_4/random_zoom_2/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??20
.sequential_4/random_zoom_2/zoom_matrix/sub_3/x?
,sequential_4/random_zoom_2/zoom_matrix/sub_3Sub7sequential_4/random_zoom_2/zoom_matrix/sub_3/x:output:0?sequential_4/random_zoom_2/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2.
,sequential_4/random_zoom_2/zoom_matrix/sub_3?
,sequential_4/random_zoom_2/zoom_matrix/mul_1Mul4sequential_4/random_zoom_2/zoom_matrix/truediv_1:z:00sequential_4/random_zoom_2/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2.
,sequential_4/random_zoom_2/zoom_matrix/mul_1?
<sequential_4/random_zoom_2/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2>
<sequential_4/random_zoom_2/zoom_matrix/strided_slice_3/stack?
>sequential_4/random_zoom_2/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2@
>sequential_4/random_zoom_2/zoom_matrix/strided_slice_3/stack_1?
>sequential_4/random_zoom_2/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2@
>sequential_4/random_zoom_2/zoom_matrix/strided_slice_3/stack_2?
6sequential_4/random_zoom_2/zoom_matrix/strided_slice_3StridedSlice*sequential_4/random_zoom_2/concat:output:0Esequential_4/random_zoom_2/zoom_matrix/strided_slice_3/stack:output:0Gsequential_4/random_zoom_2/zoom_matrix/strided_slice_3/stack_1:output:0Gsequential_4/random_zoom_2/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask28
6sequential_4/random_zoom_2/zoom_matrix/strided_slice_3?
2sequential_4/random_zoom_2/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_4/random_zoom_2/zoom_matrix/zeros/mul/y?
0sequential_4/random_zoom_2/zoom_matrix/zeros/mulMul=sequential_4/random_zoom_2/zoom_matrix/strided_slice:output:0;sequential_4/random_zoom_2/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 22
0sequential_4/random_zoom_2/zoom_matrix/zeros/mul?
3sequential_4/random_zoom_2/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?25
3sequential_4/random_zoom_2/zoom_matrix/zeros/Less/y?
1sequential_4/random_zoom_2/zoom_matrix/zeros/LessLess4sequential_4/random_zoom_2/zoom_matrix/zeros/mul:z:0<sequential_4/random_zoom_2/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 23
1sequential_4/random_zoom_2/zoom_matrix/zeros/Less?
5sequential_4/random_zoom_2/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :27
5sequential_4/random_zoom_2/zoom_matrix/zeros/packed/1?
3sequential_4/random_zoom_2/zoom_matrix/zeros/packedPack=sequential_4/random_zoom_2/zoom_matrix/strided_slice:output:0>sequential_4/random_zoom_2/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:25
3sequential_4/random_zoom_2/zoom_matrix/zeros/packed?
2sequential_4/random_zoom_2/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    24
2sequential_4/random_zoom_2/zoom_matrix/zeros/Const?
,sequential_4/random_zoom_2/zoom_matrix/zerosFill<sequential_4/random_zoom_2/zoom_matrix/zeros/packed:output:0;sequential_4/random_zoom_2/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2.
,sequential_4/random_zoom_2/zoom_matrix/zeros?
4sequential_4/random_zoom_2/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :26
4sequential_4/random_zoom_2/zoom_matrix/zeros_1/mul/y?
2sequential_4/random_zoom_2/zoom_matrix/zeros_1/mulMul=sequential_4/random_zoom_2/zoom_matrix/strided_slice:output:0=sequential_4/random_zoom_2/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 24
2sequential_4/random_zoom_2/zoom_matrix/zeros_1/mul?
5sequential_4/random_zoom_2/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?27
5sequential_4/random_zoom_2/zoom_matrix/zeros_1/Less/y?
3sequential_4/random_zoom_2/zoom_matrix/zeros_1/LessLess6sequential_4/random_zoom_2/zoom_matrix/zeros_1/mul:z:0>sequential_4/random_zoom_2/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 25
3sequential_4/random_zoom_2/zoom_matrix/zeros_1/Less?
7sequential_4/random_zoom_2/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :29
7sequential_4/random_zoom_2/zoom_matrix/zeros_1/packed/1?
5sequential_4/random_zoom_2/zoom_matrix/zeros_1/packedPack=sequential_4/random_zoom_2/zoom_matrix/strided_slice:output:0@sequential_4/random_zoom_2/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:27
5sequential_4/random_zoom_2/zoom_matrix/zeros_1/packed?
4sequential_4/random_zoom_2/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4sequential_4/random_zoom_2/zoom_matrix/zeros_1/Const?
.sequential_4/random_zoom_2/zoom_matrix/zeros_1Fill>sequential_4/random_zoom_2/zoom_matrix/zeros_1/packed:output:0=sequential_4/random_zoom_2/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????20
.sequential_4/random_zoom_2/zoom_matrix/zeros_1?
<sequential_4/random_zoom_2/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2>
<sequential_4/random_zoom_2/zoom_matrix/strided_slice_4/stack?
>sequential_4/random_zoom_2/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2@
>sequential_4/random_zoom_2/zoom_matrix/strided_slice_4/stack_1?
>sequential_4/random_zoom_2/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2@
>sequential_4/random_zoom_2/zoom_matrix/strided_slice_4/stack_2?
6sequential_4/random_zoom_2/zoom_matrix/strided_slice_4StridedSlice*sequential_4/random_zoom_2/concat:output:0Esequential_4/random_zoom_2/zoom_matrix/strided_slice_4/stack:output:0Gsequential_4/random_zoom_2/zoom_matrix/strided_slice_4/stack_1:output:0Gsequential_4/random_zoom_2/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask28
6sequential_4/random_zoom_2/zoom_matrix/strided_slice_4?
4sequential_4/random_zoom_2/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :26
4sequential_4/random_zoom_2/zoom_matrix/zeros_2/mul/y?
2sequential_4/random_zoom_2/zoom_matrix/zeros_2/mulMul=sequential_4/random_zoom_2/zoom_matrix/strided_slice:output:0=sequential_4/random_zoom_2/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 24
2sequential_4/random_zoom_2/zoom_matrix/zeros_2/mul?
5sequential_4/random_zoom_2/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?27
5sequential_4/random_zoom_2/zoom_matrix/zeros_2/Less/y?
3sequential_4/random_zoom_2/zoom_matrix/zeros_2/LessLess6sequential_4/random_zoom_2/zoom_matrix/zeros_2/mul:z:0>sequential_4/random_zoom_2/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 25
3sequential_4/random_zoom_2/zoom_matrix/zeros_2/Less?
7sequential_4/random_zoom_2/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :29
7sequential_4/random_zoom_2/zoom_matrix/zeros_2/packed/1?
5sequential_4/random_zoom_2/zoom_matrix/zeros_2/packedPack=sequential_4/random_zoom_2/zoom_matrix/strided_slice:output:0@sequential_4/random_zoom_2/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:27
5sequential_4/random_zoom_2/zoom_matrix/zeros_2/packed?
4sequential_4/random_zoom_2/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4sequential_4/random_zoom_2/zoom_matrix/zeros_2/Const?
.sequential_4/random_zoom_2/zoom_matrix/zeros_2Fill>sequential_4/random_zoom_2/zoom_matrix/zeros_2/packed:output:0=sequential_4/random_zoom_2/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????20
.sequential_4/random_zoom_2/zoom_matrix/zeros_2?
2sequential_4/random_zoom_2/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_4/random_zoom_2/zoom_matrix/concat/axis?
-sequential_4/random_zoom_2/zoom_matrix/concatConcatV2?sequential_4/random_zoom_2/zoom_matrix/strided_slice_3:output:05sequential_4/random_zoom_2/zoom_matrix/zeros:output:0.sequential_4/random_zoom_2/zoom_matrix/mul:z:07sequential_4/random_zoom_2/zoom_matrix/zeros_1:output:0?sequential_4/random_zoom_2/zoom_matrix/strided_slice_4:output:00sequential_4/random_zoom_2/zoom_matrix/mul_1:z:07sequential_4/random_zoom_2/zoom_matrix/zeros_2:output:0;sequential_4/random_zoom_2/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2/
-sequential_4/random_zoom_2/zoom_matrix/concat?
*sequential_4/random_zoom_2/transform/ShapeShapeXsequential_4/random_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2,
*sequential_4/random_zoom_2/transform/Shape?
8sequential_4/random_zoom_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_4/random_zoom_2/transform/strided_slice/stack?
:sequential_4/random_zoom_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_4/random_zoom_2/transform/strided_slice/stack_1?
:sequential_4/random_zoom_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_4/random_zoom_2/transform/strided_slice/stack_2?
2sequential_4/random_zoom_2/transform/strided_sliceStridedSlice3sequential_4/random_zoom_2/transform/Shape:output:0Asequential_4/random_zoom_2/transform/strided_slice/stack:output:0Csequential_4/random_zoom_2/transform/strided_slice/stack_1:output:0Csequential_4/random_zoom_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:24
2sequential_4/random_zoom_2/transform/strided_slice?
/sequential_4/random_zoom_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    21
/sequential_4/random_zoom_2/transform/fill_value?
?sequential_4/random_zoom_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Xsequential_4/random_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:06sequential_4/random_zoom_2/zoom_matrix/concat:output:0;sequential_4/random_zoom_2/transform/strided_slice:output:08sequential_4/random_zoom_2/transform/fill_value:output:0*/
_output_shapes
:?????????xx*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2A
?sequential_4/random_zoom_2/transform/ImageProjectiveTransformV3?
3sequential_4/random_contrast_2/random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 25
3sequential_4/random_contrast_2/random_uniform/shape?
1sequential_4/random_contrast_2/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *333?23
1sequential_4/random_contrast_2/random_uniform/min?
1sequential_4/random_contrast_2/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ff??23
1sequential_4/random_contrast_2/random_uniform/max?
;sequential_4/random_contrast_2/random_uniform/RandomUniformRandomUniform<sequential_4/random_contrast_2/random_uniform/shape:output:0*
T0*
_output_shapes
: *
dtype02=
;sequential_4/random_contrast_2/random_uniform/RandomUniform?
1sequential_4/random_contrast_2/random_uniform/subSub:sequential_4/random_contrast_2/random_uniform/max:output:0:sequential_4/random_contrast_2/random_uniform/min:output:0*
T0*
_output_shapes
: 23
1sequential_4/random_contrast_2/random_uniform/sub?
1sequential_4/random_contrast_2/random_uniform/mulMulDsequential_4/random_contrast_2/random_uniform/RandomUniform:output:05sequential_4/random_contrast_2/random_uniform/sub:z:0*
T0*
_output_shapes
: 23
1sequential_4/random_contrast_2/random_uniform/mul?
-sequential_4/random_contrast_2/random_uniformAdd5sequential_4/random_contrast_2/random_uniform/mul:z:0:sequential_4/random_contrast_2/random_uniform/min:output:0*
T0*
_output_shapes
: 2/
-sequential_4/random_contrast_2/random_uniform?
.sequential_4/random_contrast_2/adjust_contrastAdjustContrastv2Tsequential_4/random_zoom_2/transform/ImageProjectiveTransformV3:transformed_images:01sequential_4/random_contrast_2/random_uniform:z:0*/
_output_shapes
:?????????xx20
.sequential_4/random_contrast_2/adjust_contrast?
7sequential_4/random_contrast_2/adjust_contrast/IdentityIdentity7sequential_4/random_contrast_2/adjust_contrast:output:0*
T0*/
_output_shapes
:?????????xx29
7sequential_4/random_contrast_2/adjust_contrast/Identitym
rescaling_5/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling_5/Cast/xq
rescaling_5/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_5/Cast_1/x?
rescaling_5/mulMul@sequential_4/random_contrast_2/adjust_contrast/Identity:output:0rescaling_5/Cast/x:output:0*
T0*/
_output_shapes
:?????????xx2
rescaling_5/mul?
rescaling_5/addAddV2rescaling_5/mul:z:0rescaling_5/Cast_1/x:output:0*
T0*/
_output_shapes
:?????????xx2
rescaling_5/add?
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_13/Conv2D/ReadVariableOp?
conv2d_13/Conv2DConv2Drescaling_5/add:z:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx *
paddingSAME*
strides
2
conv2d_13/Conv2D?
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_13/BiasAdd/ReadVariableOp?
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx 2
conv2d_13/BiasAdd~
conv2d_13/ReluReluconv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:?????????xx 2
conv2d_13/Relu?
max_pooling2d_13/MaxPoolMaxPoolconv2d_13/Relu:activations:0*/
_output_shapes
:?????????<< *
ksize
*
paddingVALID*
strides
2
max_pooling2d_13/MaxPool?
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_14/Conv2D/ReadVariableOp?
conv2d_14/Conv2DConv2D!max_pooling2d_13/MaxPool:output:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@*
paddingSAME*
strides
2
conv2d_14/Conv2D?
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_14/BiasAdd/ReadVariableOp?
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@2
conv2d_14/BiasAdd~
conv2d_14/ReluReluconv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:?????????<<@2
conv2d_14/Relu?
max_pooling2d_14/MaxPoolMaxPoolconv2d_14/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_14/MaxPool?
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_15/Conv2D/ReadVariableOp?
conv2d_15/Conv2DConv2D!max_pooling2d_14/MaxPool:output:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_15/Conv2D?
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOp)conv2d_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_15/BiasAdd/ReadVariableOp?
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D:output:0(conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_15/BiasAdd
conv2d_15/ReluReluconv2d_15/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_15/Relu?
max_pooling2d_15/MaxPoolMaxPoolconv2d_15/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_15/MaxPool?
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_16/Conv2D/ReadVariableOp?
conv2d_16/Conv2DConv2D!max_pooling2d_15/MaxPool:output:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_16/Conv2D?
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_16/BiasAdd/ReadVariableOp?
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_16/BiasAdd
conv2d_16/ReluReluconv2d_16/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_16/Relu?
max_pooling2d_16/MaxPoolMaxPoolconv2d_16/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_16/MaxPool?
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_17/Conv2D/ReadVariableOp?
conv2d_17/Conv2DConv2D!max_pooling2d_16/MaxPool:output:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_17/Conv2D?
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_17/BiasAdd/ReadVariableOp?
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_17/BiasAdd
conv2d_17/ReluReluconv2d_17/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_17/Relu?
max_pooling2d_17/MaxPoolMaxPoolconv2d_17/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_17/MaxPool?
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_18/Conv2D/ReadVariableOp?
conv2d_18/Conv2DConv2D!max_pooling2d_17/MaxPool:output:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_18/Conv2D?
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_18/BiasAdd/ReadVariableOp?
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_18/BiasAdd
conv2d_18/ReluReluconv2d_18/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_18/Relu?
max_pooling2d_18/MaxPoolMaxPoolconv2d_18/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_18/MaxPoolw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout_2/dropout/Const?
dropout_2/dropout/MulMul!max_pooling2d_18/MaxPool:output:0 dropout_2/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_2/dropout/Mul?
dropout_2/dropout/ShapeShape!max_pooling2d_18/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype020
.dropout_2/dropout/random_uniform/RandomUniform?
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2"
 dropout_2/dropout/GreaterEqual/y?
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2 
dropout_2/dropout/GreaterEqual?
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout_2/dropout/Cast?
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout_2/dropout/Mul_1?
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_2/ReadVariableOp?
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_2/ReadVariableOp_1?
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3dropout_2/dropout/Mul_1:z:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2(
&batch_normalization_2/FusedBatchNormV3?
$batch_normalization_2/AssignNewValueAssignVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource3batch_normalization_2/FusedBatchNormV3:batch_mean:06^batch_normalization_2/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*Q
_classG
ECloc:@batch_normalization_2/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02&
$batch_normalization_2/AssignNewValue?
&batch_normalization_2/AssignNewValue_1AssignVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_2/FusedBatchNormV3:batch_variance:08^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*S
_classI
GEloc:@batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02(
&batch_normalization_2/AssignNewValue_1s
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_2/Const?
flatten_2/ReshapeReshape*batch_normalization_2/FusedBatchNormV3:y:0flatten_2/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_2/Reshape?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_4/MatMul/ReadVariableOp?
dense_4/MatMulMatMulflatten_2/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_4/MatMul?
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_4/BiasAdd/ReadVariableOp?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_4/BiasAddq
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_4/Relu?
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	?c*
dtype02
dense_5/MatMul/ReadVariableOp?
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c2
dense_5/MatMul?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:c*
dtype02 
dense_5/BiasAdd/ReadVariableOp?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c2
dense_5/BiasAdd?
IdentityIdentitydense_5/BiasAdd:output:0%^batch_normalization_2/AssignNewValue'^batch_normalization_2/AssignNewValue_16^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_1!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp@^sequential_4/random_rotation_2/stateful_uniform/StatefulUniform<^sequential_4/random_zoom_2/stateful_uniform/StatefulUniform*
T0*'
_output_shapes
:?????????c2

Identity"
identityIdentity:output:0*?
_input_shapesu
s:?????????xx::::::::::::::::::::::2L
$batch_normalization_2/AssignNewValue$batch_normalization_2/AssignNewValue2P
&batch_normalization_2/AssignNewValue_1&batch_normalization_2/AssignNewValue_12n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2D
 conv2d_15/BiasAdd/ReadVariableOp conv2d_15/BiasAdd/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp2D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2?
?sequential_4/random_rotation_2/stateful_uniform/StatefulUniform?sequential_4/random_rotation_2/stateful_uniform/StatefulUniform2z
;sequential_4/random_zoom_2/stateful_uniform/StatefulUniform;sequential_4/random_zoom_2/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:?????????xx
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_165586

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_14_layer_call_and_return_conditional_losses_165786

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????<<@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????<<@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????<< ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????<< 
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_17_layer_call_fn_165604

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_1655982
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
F
*__inference_dropout_2_layer_call_fn_167344

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1659322
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
H__inference_sequential_4_layer_call_and_return_conditional_losses_167183

inputs
identityb
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????xx2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????xx:W S
/
_output_shapes
:?????????xx
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_165964

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_14_layer_call_and_return_conditional_losses_167228

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????<<@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????<<@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????<< ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????<< 
 
_user_specified_nameinputs
?	
?
C__inference_dense_5_layer_call_and_return_conditional_losses_166069

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?c*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:c*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????c2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?V
?
H__inference_sequential_5_layer_call_and_return_conditional_losses_166225

inputs
sequential_4_166158
sequential_4_166160
conv2d_13_166167
conv2d_13_166169
conv2d_14_166173
conv2d_14_166175
conv2d_15_166179
conv2d_15_166181
conv2d_16_166185
conv2d_16_166187
conv2d_17_166191
conv2d_17_166193
conv2d_18_166197
conv2d_18_166199 
batch_normalization_2_166204 
batch_normalization_2_166206 
batch_normalization_2_166208 
batch_normalization_2_166210
dense_4_166214
dense_4_166216
dense_5_166219
dense_5_166221
identity??-batch_normalization_2/StatefulPartitionedCall?!conv2d_13/StatefulPartitionedCall?!conv2d_14/StatefulPartitionedCall?!conv2d_15/StatefulPartitionedCall?!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall?!conv2d_18/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?$sequential_4/StatefulPartitionedCall?
$sequential_4/StatefulPartitionedCallStatefulPartitionedCallinputssequential_4_166158sequential_4_166160*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????xx* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_1655282&
$sequential_4/StatefulPartitionedCallm
rescaling_5/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling_5/Cast/xq
rescaling_5/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_5/Cast_1/x?
rescaling_5/mulMul-sequential_4/StatefulPartitionedCall:output:0rescaling_5/Cast/x:output:0*
T0*/
_output_shapes
:?????????xx2
rescaling_5/mul?
rescaling_5/addAddV2rescaling_5/mul:z:0rescaling_5/Cast_1/x:output:0*
T0*/
_output_shapes
:?????????xx2
rescaling_5/add?
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCallrescaling_5/add:z:0conv2d_13_166167conv2d_13_166169*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????xx *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_13_layer_call_and_return_conditional_losses_1657582#
!conv2d_13/StatefulPartitionedCall?
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<< * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_1655502"
 max_pooling2d_13/PartitionedCall?
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_14_166173conv2d_14_166175*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_14_layer_call_and_return_conditional_losses_1657862#
!conv2d_14/StatefulPartitionedCall?
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_1655622"
 max_pooling2d_14/PartitionedCall?
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_15_166179conv2d_15_166181*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_15_layer_call_and_return_conditional_losses_1658142#
!conv2d_15/StatefulPartitionedCall?
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_1655742"
 max_pooling2d_15/PartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_16_166185conv2d_16_166187*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_16_layer_call_and_return_conditional_losses_1658422#
!conv2d_16/StatefulPartitionedCall?
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_1655862"
 max_pooling2d_16/PartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_17_166191conv2d_17_166193*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_17_layer_call_and_return_conditional_losses_1658702#
!conv2d_17/StatefulPartitionedCall?
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_1655982"
 max_pooling2d_17/PartitionedCall?
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_18_166197conv2d_18_166199*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_18_layer_call_and_return_conditional_losses_1658982#
!conv2d_18/StatefulPartitionedCall?
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_1656102"
 max_pooling2d_18/PartitionedCall?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1659272#
!dropout_2/StatefulPartitionedCall?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0batch_normalization_2_166204batch_normalization_2_166206batch_normalization_2_166208batch_normalization_2_166210*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1659642/
-batch_normalization_2/StatefulPartitionedCall?
flatten_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_1660242
flatten_2/PartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_166214dense_4_166216*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_1660432!
dense_4/StatefulPartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_166219dense_5_166221*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????c*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_1660692!
dense_5/StatefulPartitionedCall?
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0.^batch_normalization_2/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall%^sequential_4/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????c2

Identity"
identityIdentity:output:0*?
_input_shapesu
s:?????????xx::::::::::::::::::::::2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall:W S
/
_output_shapes
:?????????xx
 
_user_specified_nameinputs
?

*__inference_conv2d_14_layer_call_fn_167237

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_14_layer_call_and_return_conditional_losses_1657862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????<<@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????<< ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????<< 
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_2_layer_call_fn_167395

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1656782
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
ˇ
?
__inference__traced_save_167764
file_prefix/
+savev2_conv2d_13_kernel_read_readvariableop-
)savev2_conv2d_13_bias_read_readvariableop/
+savev2_conv2d_14_kernel_read_readvariableop-
)savev2_conv2d_14_bias_read_readvariableop/
+savev2_conv2d_15_kernel_read_readvariableop-
)savev2_conv2d_15_bias_read_readvariableop/
+savev2_conv2d_16_kernel_read_readvariableop-
)savev2_conv2d_16_bias_read_readvariableop/
+savev2_conv2d_17_kernel_read_readvariableop-
)savev2_conv2d_17_bias_read_readvariableop/
+savev2_conv2d_18_kernel_read_readvariableop-
)savev2_conv2d_18_bias_read_readvariableop:
6savev2_batch_normalization_2_gamma_read_readvariableop9
5savev2_batch_normalization_2_beta_read_readvariableop@
<savev2_batch_normalization_2_moving_mean_read_readvariableopD
@savev2_batch_normalization_2_moving_variance_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop'
#savev2_variable_read_readvariableop	)
%savev2_variable_1_read_readvariableop	)
%savev2_variable_2_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_13_kernel_m_read_readvariableop4
0savev2_adam_conv2d_13_bias_m_read_readvariableop6
2savev2_adam_conv2d_14_kernel_m_read_readvariableop4
0savev2_adam_conv2d_14_bias_m_read_readvariableop6
2savev2_adam_conv2d_15_kernel_m_read_readvariableop4
0savev2_adam_conv2d_15_bias_m_read_readvariableop6
2savev2_adam_conv2d_16_kernel_m_read_readvariableop4
0savev2_adam_conv2d_16_bias_m_read_readvariableop6
2savev2_adam_conv2d_17_kernel_m_read_readvariableop4
0savev2_adam_conv2d_17_bias_m_read_readvariableop6
2savev2_adam_conv2d_18_kernel_m_read_readvariableop4
0savev2_adam_conv2d_18_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_2_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_2_beta_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableop6
2savev2_adam_conv2d_13_kernel_v_read_readvariableop4
0savev2_adam_conv2d_13_bias_v_read_readvariableop6
2savev2_adam_conv2d_14_kernel_v_read_readvariableop4
0savev2_adam_conv2d_14_bias_v_read_readvariableop6
2savev2_adam_conv2d_15_kernel_v_read_readvariableop4
0savev2_adam_conv2d_15_bias_v_read_readvariableop6
2savev2_adam_conv2d_16_kernel_v_read_readvariableop4
0savev2_adam_conv2d_16_bias_v_read_readvariableop6
2savev2_adam_conv2d_17_kernel_v_read_readvariableop4
0savev2_adam_conv2d_17_bias_v_read_readvariableop6
2savev2_adam_conv2d_18_kernel_v_read_readvariableop4
0savev2_adam_conv2d_18_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_2_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_2_beta_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?&
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*?%
value?%B?%EB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*?
value?B?EB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_13_kernel_read_readvariableop)savev2_conv2d_13_bias_read_readvariableop+savev2_conv2d_14_kernel_read_readvariableop)savev2_conv2d_14_bias_read_readvariableop+savev2_conv2d_15_kernel_read_readvariableop)savev2_conv2d_15_bias_read_readvariableop+savev2_conv2d_16_kernel_read_readvariableop)savev2_conv2d_16_bias_read_readvariableop+savev2_conv2d_17_kernel_read_readvariableop)savev2_conv2d_17_bias_read_readvariableop+savev2_conv2d_18_kernel_read_readvariableop)savev2_conv2d_18_bias_read_readvariableop6savev2_batch_normalization_2_gamma_read_readvariableop5savev2_batch_normalization_2_beta_read_readvariableop<savev2_batch_normalization_2_moving_mean_read_readvariableop@savev2_batch_normalization_2_moving_variance_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop%savev2_variable_1_read_readvariableop%savev2_variable_2_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_13_kernel_m_read_readvariableop0savev2_adam_conv2d_13_bias_m_read_readvariableop2savev2_adam_conv2d_14_kernel_m_read_readvariableop0savev2_adam_conv2d_14_bias_m_read_readvariableop2savev2_adam_conv2d_15_kernel_m_read_readvariableop0savev2_adam_conv2d_15_bias_m_read_readvariableop2savev2_adam_conv2d_16_kernel_m_read_readvariableop0savev2_adam_conv2d_16_bias_m_read_readvariableop2savev2_adam_conv2d_17_kernel_m_read_readvariableop0savev2_adam_conv2d_17_bias_m_read_readvariableop2savev2_adam_conv2d_18_kernel_m_read_readvariableop0savev2_adam_conv2d_18_bias_m_read_readvariableop=savev2_adam_batch_normalization_2_gamma_m_read_readvariableop<savev2_adam_batch_normalization_2_beta_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop2savev2_adam_conv2d_13_kernel_v_read_readvariableop0savev2_adam_conv2d_13_bias_v_read_readvariableop2savev2_adam_conv2d_14_kernel_v_read_readvariableop0savev2_adam_conv2d_14_bias_v_read_readvariableop2savev2_adam_conv2d_15_kernel_v_read_readvariableop0savev2_adam_conv2d_15_bias_v_read_readvariableop2savev2_adam_conv2d_16_kernel_v_read_readvariableop0savev2_adam_conv2d_16_bias_v_read_readvariableop2savev2_adam_conv2d_17_kernel_v_read_readvariableop0savev2_adam_conv2d_17_bias_v_read_readvariableop2savev2_adam_conv2d_18_kernel_v_read_readvariableop0savev2_adam_conv2d_18_bias_v_read_readvariableop=savev2_adam_batch_normalization_2_gamma_v_read_readvariableop<savev2_adam_batch_normalization_2_beta_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *S
dtypesI
G2E				2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : @:@:@?:?:??:?:??:?:??:?:?:?:?:?:
??:?:	?c:c: : : : : :::: : : : : : : @:@:@?:?:??:?:??:?:??:?:?:?:
??:?:	?c:c: : : @:@:@?:?:??:?:??:?:??:?:?:?:
??:?:	?c:c: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.	*
(
_output_shapes
:??:!


_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?c: 

_output_shapes
:c:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :,!(
&
_output_shapes
: : "

_output_shapes
: :,#(
&
_output_shapes
: @: $

_output_shapes
:@:-%)
'
_output_shapes
:@?:!&

_output_shapes	
:?:.'*
(
_output_shapes
:??:!(

_output_shapes	
:?:.)*
(
_output_shapes
:??:!*

_output_shapes	
:?:.+*
(
_output_shapes
:??:!,

_output_shapes	
:?:!-

_output_shapes	
:?:!.

_output_shapes	
:?:&/"
 
_output_shapes
:
??:!0

_output_shapes	
:?:%1!

_output_shapes
:	?c: 2

_output_shapes
:c:,3(
&
_output_shapes
: : 4

_output_shapes
: :,5(
&
_output_shapes
: @: 6

_output_shapes
:@:-7)
'
_output_shapes
:@?:!8

_output_shapes	
:?:.9*
(
_output_shapes
:??:!:

_output_shapes	
:?:.;*
(
_output_shapes
:??:!<

_output_shapes	
:?:.=*
(
_output_shapes
:??:!>

_output_shapes	
:?:!?

_output_shapes	
:?:!@

_output_shapes	
:?:&A"
 
_output_shapes
:
??:!B

_output_shapes	
:?:%C!

_output_shapes
:	?c: D

_output_shapes
:c:E

_output_shapes
: 
?
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_165932

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:??????????2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
H__inference_sequential_4_layer_call_and_return_conditional_losses_165541

inputs
identityb
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????xx2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????xx:W S
/
_output_shapes
:?????????xx
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_15_layer_call_fn_165580

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_1655742
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
6__inference_batch_normalization_2_layer_call_fn_167408

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1657092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_167364

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
}
(__inference_dense_4_layer_call_fn_167503

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_1660432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
V
-__inference_sequential_4_layer_call_fn_165544
random_flip_2_input
identity?
PartitionedCallPartitionedCallrandom_flip_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????xx* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_1655412
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????xx2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????xx:d `
/
_output_shapes
:?????????xx
-
_user_specified_namerandom_flip_2_input
??
?
!__inference__wrapped_model_165050
sequential_4_input9
5sequential_5_conv2d_13_conv2d_readvariableop_resource:
6sequential_5_conv2d_13_biasadd_readvariableop_resource9
5sequential_5_conv2d_14_conv2d_readvariableop_resource:
6sequential_5_conv2d_14_biasadd_readvariableop_resource9
5sequential_5_conv2d_15_conv2d_readvariableop_resource:
6sequential_5_conv2d_15_biasadd_readvariableop_resource9
5sequential_5_conv2d_16_conv2d_readvariableop_resource:
6sequential_5_conv2d_16_biasadd_readvariableop_resource9
5sequential_5_conv2d_17_conv2d_readvariableop_resource:
6sequential_5_conv2d_17_biasadd_readvariableop_resource9
5sequential_5_conv2d_18_conv2d_readvariableop_resource:
6sequential_5_conv2d_18_biasadd_readvariableop_resource>
:sequential_5_batch_normalization_2_readvariableop_resource@
<sequential_5_batch_normalization_2_readvariableop_1_resourceO
Ksequential_5_batch_normalization_2_fusedbatchnormv3_readvariableop_resourceQ
Msequential_5_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource7
3sequential_5_dense_4_matmul_readvariableop_resource8
4sequential_5_dense_4_biasadd_readvariableop_resource7
3sequential_5_dense_5_matmul_readvariableop_resource8
4sequential_5_dense_5_biasadd_readvariableop_resource
identity??Bsequential_5/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?Dsequential_5/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?1sequential_5/batch_normalization_2/ReadVariableOp?3sequential_5/batch_normalization_2/ReadVariableOp_1?-sequential_5/conv2d_13/BiasAdd/ReadVariableOp?,sequential_5/conv2d_13/Conv2D/ReadVariableOp?-sequential_5/conv2d_14/BiasAdd/ReadVariableOp?,sequential_5/conv2d_14/Conv2D/ReadVariableOp?-sequential_5/conv2d_15/BiasAdd/ReadVariableOp?,sequential_5/conv2d_15/Conv2D/ReadVariableOp?-sequential_5/conv2d_16/BiasAdd/ReadVariableOp?,sequential_5/conv2d_16/Conv2D/ReadVariableOp?-sequential_5/conv2d_17/BiasAdd/ReadVariableOp?,sequential_5/conv2d_17/Conv2D/ReadVariableOp?-sequential_5/conv2d_18/BiasAdd/ReadVariableOp?,sequential_5/conv2d_18/Conv2D/ReadVariableOp?+sequential_5/dense_4/BiasAdd/ReadVariableOp?*sequential_5/dense_4/MatMul/ReadVariableOp?+sequential_5/dense_5/BiasAdd/ReadVariableOp?*sequential_5/dense_5/MatMul/ReadVariableOp?
sequential_5/rescaling_5/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2!
sequential_5/rescaling_5/Cast/x?
!sequential_5/rescaling_5/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_5/rescaling_5/Cast_1/x?
sequential_5/rescaling_5/mulMulsequential_4_input(sequential_5/rescaling_5/Cast/x:output:0*
T0*/
_output_shapes
:?????????xx2
sequential_5/rescaling_5/mul?
sequential_5/rescaling_5/addAddV2 sequential_5/rescaling_5/mul:z:0*sequential_5/rescaling_5/Cast_1/x:output:0*
T0*/
_output_shapes
:?????????xx2
sequential_5/rescaling_5/add?
,sequential_5/conv2d_13/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02.
,sequential_5/conv2d_13/Conv2D/ReadVariableOp?
sequential_5/conv2d_13/Conv2DConv2D sequential_5/rescaling_5/add:z:04sequential_5/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx *
paddingSAME*
strides
2
sequential_5/conv2d_13/Conv2D?
-sequential_5/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_5/conv2d_13/BiasAdd/ReadVariableOp?
sequential_5/conv2d_13/BiasAddBiasAdd&sequential_5/conv2d_13/Conv2D:output:05sequential_5/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx 2 
sequential_5/conv2d_13/BiasAdd?
sequential_5/conv2d_13/ReluRelu'sequential_5/conv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:?????????xx 2
sequential_5/conv2d_13/Relu?
%sequential_5/max_pooling2d_13/MaxPoolMaxPool)sequential_5/conv2d_13/Relu:activations:0*/
_output_shapes
:?????????<< *
ksize
*
paddingVALID*
strides
2'
%sequential_5/max_pooling2d_13/MaxPool?
,sequential_5/conv2d_14/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02.
,sequential_5/conv2d_14/Conv2D/ReadVariableOp?
sequential_5/conv2d_14/Conv2DConv2D.sequential_5/max_pooling2d_13/MaxPool:output:04sequential_5/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@*
paddingSAME*
strides
2
sequential_5/conv2d_14/Conv2D?
-sequential_5/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_5/conv2d_14/BiasAdd/ReadVariableOp?
sequential_5/conv2d_14/BiasAddBiasAdd&sequential_5/conv2d_14/Conv2D:output:05sequential_5/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@2 
sequential_5/conv2d_14/BiasAdd?
sequential_5/conv2d_14/ReluRelu'sequential_5/conv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:?????????<<@2
sequential_5/conv2d_14/Relu?
%sequential_5/max_pooling2d_14/MaxPoolMaxPool)sequential_5/conv2d_14/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2'
%sequential_5/max_pooling2d_14/MaxPool?
,sequential_5/conv2d_15/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_15_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02.
,sequential_5/conv2d_15/Conv2D/ReadVariableOp?
sequential_5/conv2d_15/Conv2DConv2D.sequential_5/max_pooling2d_14/MaxPool:output:04sequential_5/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
sequential_5/conv2d_15/Conv2D?
-sequential_5/conv2d_15/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_5/conv2d_15/BiasAdd/ReadVariableOp?
sequential_5/conv2d_15/BiasAddBiasAdd&sequential_5/conv2d_15/Conv2D:output:05sequential_5/conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
sequential_5/conv2d_15/BiasAdd?
sequential_5/conv2d_15/ReluRelu'sequential_5/conv2d_15/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
sequential_5/conv2d_15/Relu?
%sequential_5/max_pooling2d_15/MaxPoolMaxPool)sequential_5/conv2d_15/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2'
%sequential_5/max_pooling2d_15/MaxPool?
,sequential_5/conv2d_16/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_16_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,sequential_5/conv2d_16/Conv2D/ReadVariableOp?
sequential_5/conv2d_16/Conv2DConv2D.sequential_5/max_pooling2d_15/MaxPool:output:04sequential_5/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
sequential_5/conv2d_16/Conv2D?
-sequential_5/conv2d_16/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_16_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_5/conv2d_16/BiasAdd/ReadVariableOp?
sequential_5/conv2d_16/BiasAddBiasAdd&sequential_5/conv2d_16/Conv2D:output:05sequential_5/conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
sequential_5/conv2d_16/BiasAdd?
sequential_5/conv2d_16/ReluRelu'sequential_5/conv2d_16/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
sequential_5/conv2d_16/Relu?
%sequential_5/max_pooling2d_16/MaxPoolMaxPool)sequential_5/conv2d_16/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2'
%sequential_5/max_pooling2d_16/MaxPool?
,sequential_5/conv2d_17/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_17_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,sequential_5/conv2d_17/Conv2D/ReadVariableOp?
sequential_5/conv2d_17/Conv2DConv2D.sequential_5/max_pooling2d_16/MaxPool:output:04sequential_5/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
sequential_5/conv2d_17/Conv2D?
-sequential_5/conv2d_17/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_17_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_5/conv2d_17/BiasAdd/ReadVariableOp?
sequential_5/conv2d_17/BiasAddBiasAdd&sequential_5/conv2d_17/Conv2D:output:05sequential_5/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
sequential_5/conv2d_17/BiasAdd?
sequential_5/conv2d_17/ReluRelu'sequential_5/conv2d_17/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
sequential_5/conv2d_17/Relu?
%sequential_5/max_pooling2d_17/MaxPoolMaxPool)sequential_5/conv2d_17/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2'
%sequential_5/max_pooling2d_17/MaxPool?
,sequential_5/conv2d_18/Conv2D/ReadVariableOpReadVariableOp5sequential_5_conv2d_18_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02.
,sequential_5/conv2d_18/Conv2D/ReadVariableOp?
sequential_5/conv2d_18/Conv2DConv2D.sequential_5/max_pooling2d_17/MaxPool:output:04sequential_5/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
sequential_5/conv2d_18/Conv2D?
-sequential_5/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp6sequential_5_conv2d_18_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_5/conv2d_18/BiasAdd/ReadVariableOp?
sequential_5/conv2d_18/BiasAddBiasAdd&sequential_5/conv2d_18/Conv2D:output:05sequential_5/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2 
sequential_5/conv2d_18/BiasAdd?
sequential_5/conv2d_18/ReluRelu'sequential_5/conv2d_18/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
sequential_5/conv2d_18/Relu?
%sequential_5/max_pooling2d_18/MaxPoolMaxPool)sequential_5/conv2d_18/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2'
%sequential_5/max_pooling2d_18/MaxPool?
sequential_5/dropout_2/IdentityIdentity.sequential_5/max_pooling2d_18/MaxPool:output:0*
T0*0
_output_shapes
:??????????2!
sequential_5/dropout_2/Identity?
1sequential_5/batch_normalization_2/ReadVariableOpReadVariableOp:sequential_5_batch_normalization_2_readvariableop_resource*
_output_shapes	
:?*
dtype023
1sequential_5/batch_normalization_2/ReadVariableOp?
3sequential_5/batch_normalization_2/ReadVariableOp_1ReadVariableOp<sequential_5_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:?*
dtype025
3sequential_5/batch_normalization_2/ReadVariableOp_1?
Bsequential_5/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_5_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02D
Bsequential_5/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?
Dsequential_5/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_5_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02F
Dsequential_5/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?
3sequential_5/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3(sequential_5/dropout_2/Identity:output:09sequential_5/batch_normalization_2/ReadVariableOp:value:0;sequential_5/batch_normalization_2/ReadVariableOp_1:value:0Jsequential_5/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_5/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 25
3sequential_5/batch_normalization_2/FusedBatchNormV3?
sequential_5/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
sequential_5/flatten_2/Const?
sequential_5/flatten_2/ReshapeReshape7sequential_5/batch_normalization_2/FusedBatchNormV3:y:0%sequential_5/flatten_2/Const:output:0*
T0*(
_output_shapes
:??????????2 
sequential_5/flatten_2/Reshape?
*sequential_5/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_4_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*sequential_5/dense_4/MatMul/ReadVariableOp?
sequential_5/dense_4/MatMulMatMul'sequential_5/flatten_2/Reshape:output:02sequential_5/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_5/dense_4/MatMul?
+sequential_5/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+sequential_5/dense_4/BiasAdd/ReadVariableOp?
sequential_5/dense_4/BiasAddBiasAdd%sequential_5/dense_4/MatMul:product:03sequential_5/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_5/dense_4/BiasAdd?
sequential_5/dense_4/ReluRelu%sequential_5/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_5/dense_4/Relu?
*sequential_5/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_5_matmul_readvariableop_resource*
_output_shapes
:	?c*
dtype02,
*sequential_5/dense_5/MatMul/ReadVariableOp?
sequential_5/dense_5/MatMulMatMul'sequential_5/dense_4/Relu:activations:02sequential_5/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c2
sequential_5/dense_5/MatMul?
+sequential_5/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_5_biasadd_readvariableop_resource*
_output_shapes
:c*
dtype02-
+sequential_5/dense_5/BiasAdd/ReadVariableOp?
sequential_5/dense_5/BiasAddBiasAdd%sequential_5/dense_5/MatMul:product:03sequential_5/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c2
sequential_5/dense_5/BiasAdd?
IdentityIdentity%sequential_5/dense_5/BiasAdd:output:0C^sequential_5/batch_normalization_2/FusedBatchNormV3/ReadVariableOpE^sequential_5/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12^sequential_5/batch_normalization_2/ReadVariableOp4^sequential_5/batch_normalization_2/ReadVariableOp_1.^sequential_5/conv2d_13/BiasAdd/ReadVariableOp-^sequential_5/conv2d_13/Conv2D/ReadVariableOp.^sequential_5/conv2d_14/BiasAdd/ReadVariableOp-^sequential_5/conv2d_14/Conv2D/ReadVariableOp.^sequential_5/conv2d_15/BiasAdd/ReadVariableOp-^sequential_5/conv2d_15/Conv2D/ReadVariableOp.^sequential_5/conv2d_16/BiasAdd/ReadVariableOp-^sequential_5/conv2d_16/Conv2D/ReadVariableOp.^sequential_5/conv2d_17/BiasAdd/ReadVariableOp-^sequential_5/conv2d_17/Conv2D/ReadVariableOp.^sequential_5/conv2d_18/BiasAdd/ReadVariableOp-^sequential_5/conv2d_18/Conv2D/ReadVariableOp,^sequential_5/dense_4/BiasAdd/ReadVariableOp+^sequential_5/dense_4/MatMul/ReadVariableOp,^sequential_5/dense_5/BiasAdd/ReadVariableOp+^sequential_5/dense_5/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????c2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????xx::::::::::::::::::::2?
Bsequential_5/batch_normalization_2/FusedBatchNormV3/ReadVariableOpBsequential_5/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2?
Dsequential_5/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Dsequential_5/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12f
1sequential_5/batch_normalization_2/ReadVariableOp1sequential_5/batch_normalization_2/ReadVariableOp2j
3sequential_5/batch_normalization_2/ReadVariableOp_13sequential_5/batch_normalization_2/ReadVariableOp_12^
-sequential_5/conv2d_13/BiasAdd/ReadVariableOp-sequential_5/conv2d_13/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_13/Conv2D/ReadVariableOp,sequential_5/conv2d_13/Conv2D/ReadVariableOp2^
-sequential_5/conv2d_14/BiasAdd/ReadVariableOp-sequential_5/conv2d_14/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_14/Conv2D/ReadVariableOp,sequential_5/conv2d_14/Conv2D/ReadVariableOp2^
-sequential_5/conv2d_15/BiasAdd/ReadVariableOp-sequential_5/conv2d_15/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_15/Conv2D/ReadVariableOp,sequential_5/conv2d_15/Conv2D/ReadVariableOp2^
-sequential_5/conv2d_16/BiasAdd/ReadVariableOp-sequential_5/conv2d_16/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_16/Conv2D/ReadVariableOp,sequential_5/conv2d_16/Conv2D/ReadVariableOp2^
-sequential_5/conv2d_17/BiasAdd/ReadVariableOp-sequential_5/conv2d_17/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_17/Conv2D/ReadVariableOp,sequential_5/conv2d_17/Conv2D/ReadVariableOp2^
-sequential_5/conv2d_18/BiasAdd/ReadVariableOp-sequential_5/conv2d_18/BiasAdd/ReadVariableOp2\
,sequential_5/conv2d_18/Conv2D/ReadVariableOp,sequential_5/conv2d_18/Conv2D/ReadVariableOp2Z
+sequential_5/dense_4/BiasAdd/ReadVariableOp+sequential_5/dense_4/BiasAdd/ReadVariableOp2X
*sequential_5/dense_4/MatMul/ReadVariableOp*sequential_5/dense_4/MatMul/ReadVariableOp2Z
+sequential_5/dense_5/BiasAdd/ReadVariableOp+sequential_5/dense_5/BiasAdd/ReadVariableOp2X
*sequential_5/dense_5/MatMul/ReadVariableOp*sequential_5/dense_5/MatMul/ReadVariableOp:c _
/
_output_shapes
:?????????xx
,
_user_specified_namesequential_4_input
?
?
6__inference_batch_normalization_2_layer_call_fn_167472

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1659822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?S
?
H__inference_sequential_5_layer_call_and_return_conditional_losses_166152
sequential_4_input
conv2d_13_166094
conv2d_13_166096
conv2d_14_166100
conv2d_14_166102
conv2d_15_166106
conv2d_15_166108
conv2d_16_166112
conv2d_16_166114
conv2d_17_166118
conv2d_17_166120
conv2d_18_166124
conv2d_18_166126 
batch_normalization_2_166131 
batch_normalization_2_166133 
batch_normalization_2_166135 
batch_normalization_2_166137
dense_4_166141
dense_4_166143
dense_5_166146
dense_5_166148
identity??-batch_normalization_2/StatefulPartitionedCall?!conv2d_13/StatefulPartitionedCall?!conv2d_14/StatefulPartitionedCall?!conv2d_15/StatefulPartitionedCall?!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall?!conv2d_18/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?
sequential_4/PartitionedCallPartitionedCallsequential_4_input*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????xx* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_1655412
sequential_4/PartitionedCallm
rescaling_5/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling_5/Cast/xq
rescaling_5/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_5/Cast_1/x?
rescaling_5/mulMul%sequential_4/PartitionedCall:output:0rescaling_5/Cast/x:output:0*
T0*/
_output_shapes
:?????????xx2
rescaling_5/mul?
rescaling_5/addAddV2rescaling_5/mul:z:0rescaling_5/Cast_1/x:output:0*
T0*/
_output_shapes
:?????????xx2
rescaling_5/add?
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCallrescaling_5/add:z:0conv2d_13_166094conv2d_13_166096*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????xx *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_13_layer_call_and_return_conditional_losses_1657582#
!conv2d_13/StatefulPartitionedCall?
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<< * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_1655502"
 max_pooling2d_13/PartitionedCall?
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_14_166100conv2d_14_166102*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_14_layer_call_and_return_conditional_losses_1657862#
!conv2d_14/StatefulPartitionedCall?
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_1655622"
 max_pooling2d_14/PartitionedCall?
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_15_166106conv2d_15_166108*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_15_layer_call_and_return_conditional_losses_1658142#
!conv2d_15/StatefulPartitionedCall?
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_1655742"
 max_pooling2d_15/PartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_16_166112conv2d_16_166114*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_16_layer_call_and_return_conditional_losses_1658422#
!conv2d_16/StatefulPartitionedCall?
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_1655862"
 max_pooling2d_16/PartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_17_166118conv2d_17_166120*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_17_layer_call_and_return_conditional_losses_1658702#
!conv2d_17/StatefulPartitionedCall?
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_1655982"
 max_pooling2d_17/PartitionedCall?
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_18_166124conv2d_18_166126*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_18_layer_call_and_return_conditional_losses_1658982#
!conv2d_18/StatefulPartitionedCall?
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_1656102"
 max_pooling2d_18/PartitionedCall?
dropout_2/PartitionedCallPartitionedCall)max_pooling2d_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1659322
dropout_2/PartitionedCall?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0batch_normalization_2_166131batch_normalization_2_166133batch_normalization_2_166135batch_normalization_2_166137*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1659822/
-batch_normalization_2/StatefulPartitionedCall?
flatten_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_1660242
flatten_2/PartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_166141dense_4_166143*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_1660432!
dense_4/StatefulPartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_166146dense_5_166148*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????c*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_1660692!
dense_5/StatefulPartitionedCall?
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0.^batch_normalization_2/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????c2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????xx::::::::::::::::::::2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:c _
/
_output_shapes
:?????????xx
,
_user_specified_namesequential_4_input
?

?
E__inference_conv2d_15_layer_call_and_return_conditional_losses_167248

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_16_layer_call_fn_165592

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_1655862
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_18_layer_call_fn_165616

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_1656102
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_165562

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_5_layer_call_fn_166383
sequential_4_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallsequential_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????c*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_1663402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????c2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????xx::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:c _
/
_output_shapes
:?????????xx
,
_user_specified_namesequential_4_input
?
?
$__inference_signature_wrapper_166438
sequential_4_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallsequential_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????c*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_1650502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????c2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????xx::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:c _
/
_output_shapes
:?????????xx
,
_user_specified_namesequential_4_input
?
?
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_167382

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs

?#
"__inference__traced_restore_167978
file_prefix%
!assignvariableop_conv2d_13_kernel%
!assignvariableop_1_conv2d_13_bias'
#assignvariableop_2_conv2d_14_kernel%
!assignvariableop_3_conv2d_14_bias'
#assignvariableop_4_conv2d_15_kernel%
!assignvariableop_5_conv2d_15_bias'
#assignvariableop_6_conv2d_16_kernel%
!assignvariableop_7_conv2d_16_bias'
#assignvariableop_8_conv2d_17_kernel%
!assignvariableop_9_conv2d_17_bias(
$assignvariableop_10_conv2d_18_kernel&
"assignvariableop_11_conv2d_18_bias3
/assignvariableop_12_batch_normalization_2_gamma2
.assignvariableop_13_batch_normalization_2_beta9
5assignvariableop_14_batch_normalization_2_moving_mean=
9assignvariableop_15_batch_normalization_2_moving_variance&
"assignvariableop_16_dense_4_kernel$
 assignvariableop_17_dense_4_bias&
"assignvariableop_18_dense_5_kernel$
 assignvariableop_19_dense_5_bias!
assignvariableop_20_adam_iter#
assignvariableop_21_adam_beta_1#
assignvariableop_22_adam_beta_2"
assignvariableop_23_adam_decay*
&assignvariableop_24_adam_learning_rate 
assignvariableop_25_variable"
assignvariableop_26_variable_1"
assignvariableop_27_variable_2
assignvariableop_28_total
assignvariableop_29_count
assignvariableop_30_total_1
assignvariableop_31_count_1/
+assignvariableop_32_adam_conv2d_13_kernel_m-
)assignvariableop_33_adam_conv2d_13_bias_m/
+assignvariableop_34_adam_conv2d_14_kernel_m-
)assignvariableop_35_adam_conv2d_14_bias_m/
+assignvariableop_36_adam_conv2d_15_kernel_m-
)assignvariableop_37_adam_conv2d_15_bias_m/
+assignvariableop_38_adam_conv2d_16_kernel_m-
)assignvariableop_39_adam_conv2d_16_bias_m/
+assignvariableop_40_adam_conv2d_17_kernel_m-
)assignvariableop_41_adam_conv2d_17_bias_m/
+assignvariableop_42_adam_conv2d_18_kernel_m-
)assignvariableop_43_adam_conv2d_18_bias_m:
6assignvariableop_44_adam_batch_normalization_2_gamma_m9
5assignvariableop_45_adam_batch_normalization_2_beta_m-
)assignvariableop_46_adam_dense_4_kernel_m+
'assignvariableop_47_adam_dense_4_bias_m-
)assignvariableop_48_adam_dense_5_kernel_m+
'assignvariableop_49_adam_dense_5_bias_m/
+assignvariableop_50_adam_conv2d_13_kernel_v-
)assignvariableop_51_adam_conv2d_13_bias_v/
+assignvariableop_52_adam_conv2d_14_kernel_v-
)assignvariableop_53_adam_conv2d_14_bias_v/
+assignvariableop_54_adam_conv2d_15_kernel_v-
)assignvariableop_55_adam_conv2d_15_bias_v/
+assignvariableop_56_adam_conv2d_16_kernel_v-
)assignvariableop_57_adam_conv2d_16_bias_v/
+assignvariableop_58_adam_conv2d_17_kernel_v-
)assignvariableop_59_adam_conv2d_17_bias_v/
+assignvariableop_60_adam_conv2d_18_kernel_v-
)assignvariableop_61_adam_conv2d_18_bias_v:
6assignvariableop_62_adam_batch_normalization_2_gamma_v9
5assignvariableop_63_adam_batch_normalization_2_beta_v-
)assignvariableop_64_adam_dense_4_kernel_v+
'assignvariableop_65_adam_dense_4_bias_v-
)assignvariableop_66_adam_dense_5_kernel_v+
'assignvariableop_67_adam_dense_5_bias_v
identity_69??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?&
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*?%
value?%B?%EB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-0/layer-2/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*?
value?B?EB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*S
dtypesI
G2E				2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_13_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_13_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_14_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_14_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_15_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_15_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_16_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_16_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_17_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_17_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_18_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_18_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp/assignvariableop_12_batch_normalization_2_gammaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp.assignvariableop_13_batch_normalization_2_betaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp5assignvariableop_14_batch_normalization_2_moving_meanIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp9assignvariableop_15_batch_normalization_2_moving_varianceIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp"assignvariableop_16_dense_4_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp assignvariableop_17_dense_4_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp"assignvariableop_18_dense_5_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp assignvariableop_19_dense_5_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_adam_iterIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_beta_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpassignvariableop_22_adam_beta_2Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpassignvariableop_23_adam_decayIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_learning_rateIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOpassignvariableop_25_variableIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOpassignvariableop_26_variable_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOpassignvariableop_27_variable_2Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOpassignvariableop_28_totalIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOpassignvariableop_29_countIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOpassignvariableop_30_total_1Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOpassignvariableop_31_count_1Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_conv2d_13_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_conv2d_13_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_conv2d_14_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_conv2d_14_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_conv2d_15_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_conv2d_15_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp+assignvariableop_38_adam_conv2d_16_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_conv2d_16_bias_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp+assignvariableop_40_adam_conv2d_17_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_conv2d_17_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp+assignvariableop_42_adam_conv2d_18_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_conv2d_18_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp6assignvariableop_44_adam_batch_normalization_2_gamma_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp5assignvariableop_45_adam_batch_normalization_2_beta_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_dense_4_kernel_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp'assignvariableop_47_adam_dense_4_bias_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_dense_5_kernel_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp'assignvariableop_49_adam_dense_5_bias_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp+assignvariableop_50_adam_conv2d_13_kernel_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp)assignvariableop_51_adam_conv2d_13_bias_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp+assignvariableop_52_adam_conv2d_14_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp)assignvariableop_53_adam_conv2d_14_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp+assignvariableop_54_adam_conv2d_15_kernel_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp)assignvariableop_55_adam_conv2d_15_bias_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp+assignvariableop_56_adam_conv2d_16_kernel_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp)assignvariableop_57_adam_conv2d_16_bias_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp+assignvariableop_58_adam_conv2d_17_kernel_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp)assignvariableop_59_adam_conv2d_17_bias_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp+assignvariableop_60_adam_conv2d_18_kernel_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp)assignvariableop_61_adam_conv2d_18_bias_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp6assignvariableop_62_adam_batch_normalization_2_gamma_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp5assignvariableop_63_adam_batch_normalization_2_beta_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp)assignvariableop_64_adam_dense_4_kernel_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp'assignvariableop_65_adam_dense_4_bias_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp)assignvariableop_66_adam_dense_5_kernel_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp'assignvariableop_67_adam_dense_5_bias_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_679
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_68Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_68?
Identity_69IdentityIdentity_68:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_69"#
identity_69Identity_69:output:0*?
_input_shapes?
?: ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
6__inference_batch_normalization_2_layer_call_fn_167459

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1659642
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_15_layer_call_and_return_conditional_losses_165814

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
-__inference_sequential_5_layer_call_fn_166944

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????c*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_1663402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????c2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????xx::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????xx
 
_user_specified_nameinputs
?
a
E__inference_flatten_2_layer_call_and_return_conditional_losses_167478

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

*__inference_conv2d_13_layer_call_fn_167217

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????xx *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_13_layer_call_and_return_conditional_losses_1657582
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????xx 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????xx::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????xx
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_167446

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_13_layer_call_and_return_conditional_losses_165758

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????xx 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????xx 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????xx::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????xx
 
_user_specified_nameinputs
?
I
-__inference_sequential_4_layer_call_fn_167197

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????xx* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_1655412
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????xx2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????xx:W S
/
_output_shapes
:?????????xx
 
_user_specified_nameinputs
?
?
-__inference_sequential_4_layer_call_fn_167192

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????xx* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_1655282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????xx2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????xx::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????xx
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_165598

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_18_layer_call_and_return_conditional_losses_165898

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_16_layer_call_and_return_conditional_losses_165842

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?W
?
H__inference_sequential_5_layer_call_and_return_conditional_losses_166086
sequential_4_input
sequential_4_165738
sequential_4_165740
conv2d_13_165769
conv2d_13_165771
conv2d_14_165797
conv2d_14_165799
conv2d_15_165825
conv2d_15_165827
conv2d_16_165853
conv2d_16_165855
conv2d_17_165881
conv2d_17_165883
conv2d_18_165909
conv2d_18_165911 
batch_normalization_2_166009 
batch_normalization_2_166011 
batch_normalization_2_166013 
batch_normalization_2_166015
dense_4_166054
dense_4_166056
dense_5_166080
dense_5_166082
identity??-batch_normalization_2/StatefulPartitionedCall?!conv2d_13/StatefulPartitionedCall?!conv2d_14/StatefulPartitionedCall?!conv2d_15/StatefulPartitionedCall?!conv2d_16/StatefulPartitionedCall?!conv2d_17/StatefulPartitionedCall?!conv2d_18/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?$sequential_4/StatefulPartitionedCall?
$sequential_4/StatefulPartitionedCallStatefulPartitionedCallsequential_4_inputsequential_4_165738sequential_4_165740*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????xx* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_1655282&
$sequential_4/StatefulPartitionedCallm
rescaling_5/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling_5/Cast/xq
rescaling_5/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_5/Cast_1/x?
rescaling_5/mulMul-sequential_4/StatefulPartitionedCall:output:0rescaling_5/Cast/x:output:0*
T0*/
_output_shapes
:?????????xx2
rescaling_5/mul?
rescaling_5/addAddV2rescaling_5/mul:z:0rescaling_5/Cast_1/x:output:0*
T0*/
_output_shapes
:?????????xx2
rescaling_5/add?
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCallrescaling_5/add:z:0conv2d_13_165769conv2d_13_165771*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????xx *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_13_layer_call_and_return_conditional_losses_1657582#
!conv2d_13/StatefulPartitionedCall?
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<< * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_1655502"
 max_pooling2d_13/PartitionedCall?
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_14_165797conv2d_14_165799*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<<@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_14_layer_call_and_return_conditional_losses_1657862#
!conv2d_14/StatefulPartitionedCall?
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_1655622"
 max_pooling2d_14/PartitionedCall?
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_15_165825conv2d_15_165827*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_15_layer_call_and_return_conditional_losses_1658142#
!conv2d_15/StatefulPartitionedCall?
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_1655742"
 max_pooling2d_15/PartitionedCall?
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_16_165853conv2d_16_165855*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_16_layer_call_and_return_conditional_losses_1658422#
!conv2d_16/StatefulPartitionedCall?
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_1655862"
 max_pooling2d_16/PartitionedCall?
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_17_165881conv2d_17_165883*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_17_layer_call_and_return_conditional_losses_1658702#
!conv2d_17/StatefulPartitionedCall?
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_1655982"
 max_pooling2d_17/PartitionedCall?
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_18_165909conv2d_18_165911*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_18_layer_call_and_return_conditional_losses_1658982#
!conv2d_18/StatefulPartitionedCall?
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_1656102"
 max_pooling2d_18/PartitionedCall?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_1659272#
!dropout_2/StatefulPartitionedCall?
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0batch_normalization_2_166009batch_normalization_2_166011batch_normalization_2_166013batch_normalization_2_166015*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1659642/
-batch_normalization_2/StatefulPartitionedCall?
flatten_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_1660242
flatten_2/PartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_166054dense_4_166056*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_1660432!
dense_4/StatefulPartitionedCall?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_166080dense_5_166082*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????c*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_1660692!
dense_5/StatefulPartitionedCall?
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0.^batch_normalization_2/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall%^sequential_4/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????c2

Identity"
identityIdentity:output:0*?
_input_shapesu
s:?????????xx::::::::::::::::::::::2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall:c _
/
_output_shapes
:?????????xx
,
_user_specified_namesequential_4_input
?
?
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_165678

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_165550

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
??
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_167179

inputs?
;random_rotation_2_stateful_uniform_statefuluniform_resource;
7random_zoom_2_stateful_uniform_statefuluniform_resource
identity??2random_rotation_2/stateful_uniform/StatefulUniform?.random_zoom_2/stateful_uniform/StatefulUniform?
4random_flip_2/random_flip_up_down/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*/
_output_shapes
:?????????xx26
4random_flip_2/random_flip_up_down/control_dependency?
'random_flip_2/random_flip_up_down/ShapeShape=random_flip_2/random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:2)
'random_flip_2/random_flip_up_down/Shape?
5random_flip_2/random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_flip_2/random_flip_up_down/strided_slice/stack?
7random_flip_2/random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_flip_2/random_flip_up_down/strided_slice/stack_1?
7random_flip_2/random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_flip_2/random_flip_up_down/strided_slice/stack_2?
/random_flip_2/random_flip_up_down/strided_sliceStridedSlice0random_flip_2/random_flip_up_down/Shape:output:0>random_flip_2/random_flip_up_down/strided_slice/stack:output:0@random_flip_2/random_flip_up_down/strided_slice/stack_1:output:0@random_flip_2/random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_flip_2/random_flip_up_down/strided_slice?
6random_flip_2/random_flip_up_down/random_uniform/shapePack8random_flip_2/random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:28
6random_flip_2/random_flip_up_down/random_uniform/shape?
4random_flip_2/random_flip_up_down/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4random_flip_2/random_flip_up_down/random_uniform/min?
4random_flip_2/random_flip_up_down/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4random_flip_2/random_flip_up_down/random_uniform/max?
>random_flip_2/random_flip_up_down/random_uniform/RandomUniformRandomUniform?random_flip_2/random_flip_up_down/random_uniform/shape:output:0*
T0*#
_output_shapes
:?????????*
dtype02@
>random_flip_2/random_flip_up_down/random_uniform/RandomUniform?
4random_flip_2/random_flip_up_down/random_uniform/MulMulGrandom_flip_2/random_flip_up_down/random_uniform/RandomUniform:output:0=random_flip_2/random_flip_up_down/random_uniform/max:output:0*
T0*#
_output_shapes
:?????????26
4random_flip_2/random_flip_up_down/random_uniform/Mul?
1random_flip_2/random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_2/random_flip_up_down/Reshape/shape/1?
1random_flip_2/random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_2/random_flip_up_down/Reshape/shape/2?
1random_flip_2/random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_2/random_flip_up_down/Reshape/shape/3?
/random_flip_2/random_flip_up_down/Reshape/shapePack8random_flip_2/random_flip_up_down/strided_slice:output:0:random_flip_2/random_flip_up_down/Reshape/shape/1:output:0:random_flip_2/random_flip_up_down/Reshape/shape/2:output:0:random_flip_2/random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:21
/random_flip_2/random_flip_up_down/Reshape/shape?
)random_flip_2/random_flip_up_down/ReshapeReshape8random_flip_2/random_flip_up_down/random_uniform/Mul:z:08random_flip_2/random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????2+
)random_flip_2/random_flip_up_down/Reshape?
'random_flip_2/random_flip_up_down/RoundRound2random_flip_2/random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:?????????2)
'random_flip_2/random_flip_up_down/Round?
0random_flip_2/random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:22
0random_flip_2/random_flip_up_down/ReverseV2/axis?
+random_flip_2/random_flip_up_down/ReverseV2	ReverseV2=random_flip_2/random_flip_up_down/control_dependency:output:09random_flip_2/random_flip_up_down/ReverseV2/axis:output:0*
T0*/
_output_shapes
:?????????xx2-
+random_flip_2/random_flip_up_down/ReverseV2?
%random_flip_2/random_flip_up_down/mulMul+random_flip_2/random_flip_up_down/Round:y:04random_flip_2/random_flip_up_down/ReverseV2:output:0*
T0*/
_output_shapes
:?????????xx2'
%random_flip_2/random_flip_up_down/mul?
'random_flip_2/random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_flip_2/random_flip_up_down/sub/x?
%random_flip_2/random_flip_up_down/subSub0random_flip_2/random_flip_up_down/sub/x:output:0+random_flip_2/random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:?????????2'
%random_flip_2/random_flip_up_down/sub?
'random_flip_2/random_flip_up_down/mul_1Mul)random_flip_2/random_flip_up_down/sub:z:0=random_flip_2/random_flip_up_down/control_dependency:output:0*
T0*/
_output_shapes
:?????????xx2)
'random_flip_2/random_flip_up_down/mul_1?
%random_flip_2/random_flip_up_down/addAddV2)random_flip_2/random_flip_up_down/mul:z:0+random_flip_2/random_flip_up_down/mul_1:z:0*
T0*/
_output_shapes
:?????????xx2'
%random_flip_2/random_flip_up_down/add?
random_rotation_2/ShapeShape)random_flip_2/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2
random_rotation_2/Shape?
%random_rotation_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_2/strided_slice/stack?
'random_rotation_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice/stack_1?
'random_rotation_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice/stack_2?
random_rotation_2/strided_sliceStridedSlice random_rotation_2/Shape:output:0.random_rotation_2/strided_slice/stack:output:00random_rotation_2/strided_slice/stack_1:output:00random_rotation_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_2/strided_slice?
'random_rotation_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice_1/stack?
)random_rotation_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_1/stack_1?
)random_rotation_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_1/stack_2?
!random_rotation_2/strided_slice_1StridedSlice random_rotation_2/Shape:output:00random_rotation_2/strided_slice_1/stack:output:02random_rotation_2/strided_slice_1/stack_1:output:02random_rotation_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_2/strided_slice_1?
random_rotation_2/CastCast*random_rotation_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_2/Cast?
'random_rotation_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_2/strided_slice_2/stack?
)random_rotation_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_2/stack_1?
)random_rotation_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_2/strided_slice_2/stack_2?
!random_rotation_2/strided_slice_2StridedSlice random_rotation_2/Shape:output:00random_rotation_2/strided_slice_2/stack:output:02random_rotation_2/strided_slice_2/stack_1:output:02random_rotation_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_2/strided_slice_2?
random_rotation_2/Cast_1Cast*random_rotation_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_2/Cast_1?
(random_rotation_2/stateful_uniform/shapePack(random_rotation_2/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_2/stateful_uniform/shape?
&random_rotation_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *?ɿ2(
&random_rotation_2/stateful_uniform/min?
&random_rotation_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *???2(
&random_rotation_2/stateful_uniform/max?
<random_rotation_2/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2>
<random_rotation_2/stateful_uniform/StatefulUniform/algorithm?
2random_rotation_2/stateful_uniform/StatefulUniformStatefulUniform;random_rotation_2_stateful_uniform_statefuluniform_resourceErandom_rotation_2/stateful_uniform/StatefulUniform/algorithm:output:01random_rotation_2/stateful_uniform/shape:output:0*#
_output_shapes
:?????????*
shape_dtype024
2random_rotation_2/stateful_uniform/StatefulUniform?
&random_rotation_2/stateful_uniform/subSub/random_rotation_2/stateful_uniform/max:output:0/random_rotation_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_2/stateful_uniform/sub?
&random_rotation_2/stateful_uniform/mulMul;random_rotation_2/stateful_uniform/StatefulUniform:output:0*random_rotation_2/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????2(
&random_rotation_2/stateful_uniform/mul?
"random_rotation_2/stateful_uniformAdd*random_rotation_2/stateful_uniform/mul:z:0/random_rotation_2/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????2$
"random_rotation_2/stateful_uniform?
'random_rotation_2/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2)
'random_rotation_2/rotation_matrix/sub/y?
%random_rotation_2/rotation_matrix/subSubrandom_rotation_2/Cast_1:y:00random_rotation_2/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_2/rotation_matrix/sub?
%random_rotation_2/rotation_matrix/CosCos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/Cos?
)random_rotation_2/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_1/y?
'random_rotation_2/rotation_matrix/sub_1Subrandom_rotation_2/Cast_1:y:02random_rotation_2/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_1?
%random_rotation_2/rotation_matrix/mulMul)random_rotation_2/rotation_matrix/Cos:y:0+random_rotation_2/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/mul?
%random_rotation_2/rotation_matrix/SinSin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/Sin?
)random_rotation_2/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_2/y?
'random_rotation_2/rotation_matrix/sub_2Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_2?
'random_rotation_2/rotation_matrix/mul_1Mul)random_rotation_2/rotation_matrix/Sin:y:0+random_rotation_2/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/mul_1?
'random_rotation_2/rotation_matrix/sub_3Sub)random_rotation_2/rotation_matrix/mul:z:0+random_rotation_2/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/sub_3?
'random_rotation_2/rotation_matrix/sub_4Sub)random_rotation_2/rotation_matrix/sub:z:0+random_rotation_2/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/sub_4?
+random_rotation_2/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_2/rotation_matrix/truediv/y?
)random_rotation_2/rotation_matrix/truedivRealDiv+random_rotation_2/rotation_matrix/sub_4:z:04random_rotation_2/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????2+
)random_rotation_2/rotation_matrix/truediv?
)random_rotation_2/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_5/y?
'random_rotation_2/rotation_matrix/sub_5Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_5?
'random_rotation_2/rotation_matrix/Sin_1Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Sin_1?
)random_rotation_2/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_6/y?
'random_rotation_2/rotation_matrix/sub_6Subrandom_rotation_2/Cast_1:y:02random_rotation_2/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_6?
'random_rotation_2/rotation_matrix/mul_2Mul+random_rotation_2/rotation_matrix/Sin_1:y:0+random_rotation_2/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/mul_2?
'random_rotation_2/rotation_matrix/Cos_1Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Cos_1?
)random_rotation_2/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)random_rotation_2/rotation_matrix/sub_7/y?
'random_rotation_2/rotation_matrix/sub_7Subrandom_rotation_2/Cast:y:02random_rotation_2/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_2/rotation_matrix/sub_7?
'random_rotation_2/rotation_matrix/mul_3Mul+random_rotation_2/rotation_matrix/Cos_1:y:0+random_rotation_2/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/mul_3?
%random_rotation_2/rotation_matrix/addAddV2+random_rotation_2/rotation_matrix/mul_2:z:0+random_rotation_2/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/add?
'random_rotation_2/rotation_matrix/sub_8Sub+random_rotation_2/rotation_matrix/sub_5:z:0)random_rotation_2/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/sub_8?
-random_rotation_2/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_2/rotation_matrix/truediv_1/y?
+random_rotation_2/rotation_matrix/truediv_1RealDiv+random_rotation_2/rotation_matrix/sub_8:z:06random_rotation_2/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????2-
+random_rotation_2/rotation_matrix/truediv_1?
'random_rotation_2/rotation_matrix/ShapeShape&random_rotation_2/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_2/rotation_matrix/Shape?
5random_rotation_2/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_2/rotation_matrix/strided_slice/stack?
7random_rotation_2/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_2/rotation_matrix/strided_slice/stack_1?
7random_rotation_2/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_2/rotation_matrix/strided_slice/stack_2?
/random_rotation_2/rotation_matrix/strided_sliceStridedSlice0random_rotation_2/rotation_matrix/Shape:output:0>random_rotation_2/rotation_matrix/strided_slice/stack:output:0@random_rotation_2/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_2/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_2/rotation_matrix/strided_slice?
'random_rotation_2/rotation_matrix/Cos_2Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Cos_2?
7random_rotation_2/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_1/stack?
9random_rotation_2/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_1/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_1/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_1StridedSlice+random_rotation_2/rotation_matrix/Cos_2:y:0@random_rotation_2/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_1?
'random_rotation_2/rotation_matrix/Sin_2Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Sin_2?
7random_rotation_2/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_2/stack?
9random_rotation_2/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_2/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_2/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_2StridedSlice+random_rotation_2/rotation_matrix/Sin_2:y:0@random_rotation_2/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_2?
%random_rotation_2/rotation_matrix/NegNeg:random_rotation_2/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2'
%random_rotation_2/rotation_matrix/Neg?
7random_rotation_2/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_3/stack?
9random_rotation_2/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_3/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_3/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_3StridedSlice-random_rotation_2/rotation_matrix/truediv:z:0@random_rotation_2/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_3?
'random_rotation_2/rotation_matrix/Sin_3Sin&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Sin_3?
7random_rotation_2/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_4/stack?
9random_rotation_2/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_4/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_4/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_4StridedSlice+random_rotation_2/rotation_matrix/Sin_3:y:0@random_rotation_2/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_4?
'random_rotation_2/rotation_matrix/Cos_3Cos&random_rotation_2/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/Cos_3?
7random_rotation_2/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_5/stack?
9random_rotation_2/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_5/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_5/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_5StridedSlice+random_rotation_2/rotation_matrix/Cos_3:y:0@random_rotation_2/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_5?
7random_rotation_2/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_2/rotation_matrix/strided_slice_6/stack?
9random_rotation_2/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_2/rotation_matrix/strided_slice_6/stack_1?
9random_rotation_2/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_2/rotation_matrix/strided_slice_6/stack_2?
1random_rotation_2/rotation_matrix/strided_slice_6StridedSlice/random_rotation_2/rotation_matrix/truediv_1:z:0@random_rotation_2/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_2/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_2/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_2/rotation_matrix/strided_slice_6?
-random_rotation_2/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_2/rotation_matrix/zeros/mul/y?
+random_rotation_2/rotation_matrix/zeros/mulMul8random_rotation_2/rotation_matrix/strided_slice:output:06random_rotation_2/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_2/rotation_matrix/zeros/mul?
.random_rotation_2/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?20
.random_rotation_2/rotation_matrix/zeros/Less/y?
,random_rotation_2/rotation_matrix/zeros/LessLess/random_rotation_2/rotation_matrix/zeros/mul:z:07random_rotation_2/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_2/rotation_matrix/zeros/Less?
0random_rotation_2/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_2/rotation_matrix/zeros/packed/1?
.random_rotation_2/rotation_matrix/zeros/packedPack8random_rotation_2/rotation_matrix/strided_slice:output:09random_rotation_2/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_2/rotation_matrix/zeros/packed?
-random_rotation_2/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_2/rotation_matrix/zeros/Const?
'random_rotation_2/rotation_matrix/zerosFill7random_rotation_2/rotation_matrix/zeros/packed:output:06random_rotation_2/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2)
'random_rotation_2/rotation_matrix/zeros?
-random_rotation_2/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_2/rotation_matrix/concat/axis?
(random_rotation_2/rotation_matrix/concatConcatV2:random_rotation_2/rotation_matrix/strided_slice_1:output:0)random_rotation_2/rotation_matrix/Neg:y:0:random_rotation_2/rotation_matrix/strided_slice_3:output:0:random_rotation_2/rotation_matrix/strided_slice_4:output:0:random_rotation_2/rotation_matrix/strided_slice_5:output:0:random_rotation_2/rotation_matrix/strided_slice_6:output:00random_rotation_2/rotation_matrix/zeros:output:06random_rotation_2/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2*
(random_rotation_2/rotation_matrix/concat?
!random_rotation_2/transform/ShapeShape)random_flip_2/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2#
!random_rotation_2/transform/Shape?
/random_rotation_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_2/transform/strided_slice/stack?
1random_rotation_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_2/transform/strided_slice/stack_1?
1random_rotation_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_2/transform/strided_slice/stack_2?
)random_rotation_2/transform/strided_sliceStridedSlice*random_rotation_2/transform/Shape:output:08random_rotation_2/transform/strided_slice/stack:output:0:random_rotation_2/transform/strided_slice/stack_1:output:0:random_rotation_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_2/transform/strided_slice?
&random_rotation_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_2/transform/fill_value?
6random_rotation_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3)random_flip_2/random_flip_up_down/add:z:01random_rotation_2/rotation_matrix/concat:output:02random_rotation_2/transform/strided_slice:output:0/random_rotation_2/transform/fill_value:output:0*/
_output_shapes
:?????????xx*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_2/transform/ImageProjectiveTransformV3?
random_zoom_2/ShapeShapeKrandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom_2/Shape?
!random_zoom_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!random_zoom_2/strided_slice/stack?
#random_zoom_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_2/strided_slice/stack_1?
#random_zoom_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_2/strided_slice/stack_2?
random_zoom_2/strided_sliceStridedSlicerandom_zoom_2/Shape:output:0*random_zoom_2/strided_slice/stack:output:0,random_zoom_2/strided_slice/stack_1:output:0,random_zoom_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_2/strided_slice?
#random_zoom_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_2/strided_slice_1/stack?
%random_zoom_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_2/strided_slice_1/stack_1?
%random_zoom_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_2/strided_slice_1/stack_2?
random_zoom_2/strided_slice_1StridedSlicerandom_zoom_2/Shape:output:0,random_zoom_2/strided_slice_1/stack:output:0.random_zoom_2/strided_slice_1/stack_1:output:0.random_zoom_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_2/strided_slice_1?
random_zoom_2/CastCast&random_zoom_2/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_2/Cast?
#random_zoom_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2%
#random_zoom_2/strided_slice_2/stack?
%random_zoom_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_2/strided_slice_2/stack_1?
%random_zoom_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%random_zoom_2/strided_slice_2/stack_2?
random_zoom_2/strided_slice_2StridedSlicerandom_zoom_2/Shape:output:0,random_zoom_2/strided_slice_2/stack:output:0.random_zoom_2/strided_slice_2/stack_1:output:0.random_zoom_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
random_zoom_2/strided_slice_2?
random_zoom_2/Cast_1Cast&random_zoom_2/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_zoom_2/Cast_1?
&random_zoom_2/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&random_zoom_2/stateful_uniform/shape/1?
$random_zoom_2/stateful_uniform/shapePack$random_zoom_2/strided_slice:output:0/random_zoom_2/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:2&
$random_zoom_2/stateful_uniform/shape?
"random_zoom_2/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *???2$
"random_zoom_2/stateful_uniform/min?
"random_zoom_2/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *33??2$
"random_zoom_2/stateful_uniform/max?
8random_zoom_2/stateful_uniform/StatefulUniform/algorithmConst*
_output_shapes
: *
dtype0	*
value	B	 R2:
8random_zoom_2/stateful_uniform/StatefulUniform/algorithm?
.random_zoom_2/stateful_uniform/StatefulUniformStatefulUniform7random_zoom_2_stateful_uniform_statefuluniform_resourceArandom_zoom_2/stateful_uniform/StatefulUniform/algorithm:output:0-random_zoom_2/stateful_uniform/shape:output:0*'
_output_shapes
:?????????*
shape_dtype020
.random_zoom_2/stateful_uniform/StatefulUniform?
"random_zoom_2/stateful_uniform/subSub+random_zoom_2/stateful_uniform/max:output:0+random_zoom_2/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2$
"random_zoom_2/stateful_uniform/sub?
"random_zoom_2/stateful_uniform/mulMul7random_zoom_2/stateful_uniform/StatefulUniform:output:0&random_zoom_2/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????2$
"random_zoom_2/stateful_uniform/mul?
random_zoom_2/stateful_uniformAdd&random_zoom_2/stateful_uniform/mul:z:0+random_zoom_2/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????2 
random_zoom_2/stateful_uniformx
random_zoom_2/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
random_zoom_2/concat/axis?
random_zoom_2/concatConcatV2"random_zoom_2/stateful_uniform:z:0"random_zoom_2/stateful_uniform:z:0"random_zoom_2/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2
random_zoom_2/concat?
random_zoom_2/zoom_matrix/ShapeShaperandom_zoom_2/concat:output:0*
T0*
_output_shapes
:2!
random_zoom_2/zoom_matrix/Shape?
-random_zoom_2/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-random_zoom_2/zoom_matrix/strided_slice/stack?
/random_zoom_2/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_2/zoom_matrix/strided_slice/stack_1?
/random_zoom_2/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/random_zoom_2/zoom_matrix/strided_slice/stack_2?
'random_zoom_2/zoom_matrix/strided_sliceStridedSlice(random_zoom_2/zoom_matrix/Shape:output:06random_zoom_2/zoom_matrix/strided_slice/stack:output:08random_zoom_2/zoom_matrix/strided_slice/stack_1:output:08random_zoom_2/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'random_zoom_2/zoom_matrix/strided_slice?
random_zoom_2/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
random_zoom_2/zoom_matrix/sub/y?
random_zoom_2/zoom_matrix/subSubrandom_zoom_2/Cast_1:y:0(random_zoom_2/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: 2
random_zoom_2/zoom_matrix/sub?
#random_zoom_2/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2%
#random_zoom_2/zoom_matrix/truediv/y?
!random_zoom_2/zoom_matrix/truedivRealDiv!random_zoom_2/zoom_matrix/sub:z:0,random_zoom_2/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 2#
!random_zoom_2/zoom_matrix/truediv?
/random_zoom_2/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_2/zoom_matrix/strided_slice_1/stack?
1random_zoom_2/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_2/zoom_matrix/strided_slice_1/stack_1?
1random_zoom_2/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_2/zoom_matrix/strided_slice_1/stack_2?
)random_zoom_2/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_2/concat:output:08random_zoom_2/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_2/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_2/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_2/zoom_matrix/strided_slice_1?
!random_zoom_2/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_2/zoom_matrix/sub_1/x?
random_zoom_2/zoom_matrix/sub_1Sub*random_zoom_2/zoom_matrix/sub_1/x:output:02random_zoom_2/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_2/zoom_matrix/sub_1?
random_zoom_2/zoom_matrix/mulMul%random_zoom_2/zoom_matrix/truediv:z:0#random_zoom_2/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????2
random_zoom_2/zoom_matrix/mul?
!random_zoom_2/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_2/zoom_matrix/sub_2/y?
random_zoom_2/zoom_matrix/sub_2Subrandom_zoom_2/Cast:y:0*random_zoom_2/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2!
random_zoom_2/zoom_matrix/sub_2?
%random_zoom_2/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2'
%random_zoom_2/zoom_matrix/truediv_1/y?
#random_zoom_2/zoom_matrix/truediv_1RealDiv#random_zoom_2/zoom_matrix/sub_2:z:0.random_zoom_2/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_2/zoom_matrix/truediv_1?
/random_zoom_2/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_2/zoom_matrix/strided_slice_2/stack?
1random_zoom_2/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_2/zoom_matrix/strided_slice_2/stack_1?
1random_zoom_2/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_2/zoom_matrix/strided_slice_2/stack_2?
)random_zoom_2/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_2/concat:output:08random_zoom_2/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_2/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_2/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_2/zoom_matrix/strided_slice_2?
!random_zoom_2/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!random_zoom_2/zoom_matrix/sub_3/x?
random_zoom_2/zoom_matrix/sub_3Sub*random_zoom_2/zoom_matrix/sub_3/x:output:02random_zoom_2/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_2/zoom_matrix/sub_3?
random_zoom_2/zoom_matrix/mul_1Mul'random_zoom_2/zoom_matrix/truediv_1:z:0#random_zoom_2/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????2!
random_zoom_2/zoom_matrix/mul_1?
/random_zoom_2/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            21
/random_zoom_2/zoom_matrix/strided_slice_3/stack?
1random_zoom_2/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_2/zoom_matrix/strided_slice_3/stack_1?
1random_zoom_2/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_2/zoom_matrix/strided_slice_3/stack_2?
)random_zoom_2/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_2/concat:output:08random_zoom_2/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_2/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_2/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_2/zoom_matrix/strided_slice_3?
%random_zoom_2/zoom_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_2/zoom_matrix/zeros/mul/y?
#random_zoom_2/zoom_matrix/zeros/mulMul0random_zoom_2/zoom_matrix/strided_slice:output:0.random_zoom_2/zoom_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2%
#random_zoom_2/zoom_matrix/zeros/mul?
&random_zoom_2/zoom_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&random_zoom_2/zoom_matrix/zeros/Less/y?
$random_zoom_2/zoom_matrix/zeros/LessLess'random_zoom_2/zoom_matrix/zeros/mul:z:0/random_zoom_2/zoom_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2&
$random_zoom_2/zoom_matrix/zeros/Less?
(random_zoom_2/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(random_zoom_2/zoom_matrix/zeros/packed/1?
&random_zoom_2/zoom_matrix/zeros/packedPack0random_zoom_2/zoom_matrix/strided_slice:output:01random_zoom_2/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&random_zoom_2/zoom_matrix/zeros/packed?
%random_zoom_2/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%random_zoom_2/zoom_matrix/zeros/Const?
random_zoom_2/zoom_matrix/zerosFill/random_zoom_2/zoom_matrix/zeros/packed:output:0.random_zoom_2/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2!
random_zoom_2/zoom_matrix/zeros?
'random_zoom_2/zoom_matrix/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_2/zoom_matrix/zeros_1/mul/y?
%random_zoom_2/zoom_matrix/zeros_1/mulMul0random_zoom_2/zoom_matrix/strided_slice:output:00random_zoom_2/zoom_matrix/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_2/zoom_matrix/zeros_1/mul?
(random_zoom_2/zoom_matrix/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_2/zoom_matrix/zeros_1/Less/y?
&random_zoom_2/zoom_matrix/zeros_1/LessLess)random_zoom_2/zoom_matrix/zeros_1/mul:z:01random_zoom_2/zoom_matrix/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_2/zoom_matrix/zeros_1/Less?
*random_zoom_2/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_2/zoom_matrix/zeros_1/packed/1?
(random_zoom_2/zoom_matrix/zeros_1/packedPack0random_zoom_2/zoom_matrix/strided_slice:output:03random_zoom_2/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_2/zoom_matrix/zeros_1/packed?
'random_zoom_2/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_2/zoom_matrix/zeros_1/Const?
!random_zoom_2/zoom_matrix/zeros_1Fill1random_zoom_2/zoom_matrix/zeros_1/packed:output:00random_zoom_2/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_2/zoom_matrix/zeros_1?
/random_zoom_2/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           21
/random_zoom_2/zoom_matrix/strided_slice_4/stack?
1random_zoom_2/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           23
1random_zoom_2/zoom_matrix/strided_slice_4/stack_1?
1random_zoom_2/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         23
1random_zoom_2/zoom_matrix/strided_slice_4/stack_2?
)random_zoom_2/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_2/concat:output:08random_zoom_2/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_2/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_2/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask2+
)random_zoom_2/zoom_matrix/strided_slice_4?
'random_zoom_2/zoom_matrix/zeros_2/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'random_zoom_2/zoom_matrix/zeros_2/mul/y?
%random_zoom_2/zoom_matrix/zeros_2/mulMul0random_zoom_2/zoom_matrix/strided_slice:output:00random_zoom_2/zoom_matrix/zeros_2/mul/y:output:0*
T0*
_output_shapes
: 2'
%random_zoom_2/zoom_matrix/zeros_2/mul?
(random_zoom_2/zoom_matrix/zeros_2/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2*
(random_zoom_2/zoom_matrix/zeros_2/Less/y?
&random_zoom_2/zoom_matrix/zeros_2/LessLess)random_zoom_2/zoom_matrix/zeros_2/mul:z:01random_zoom_2/zoom_matrix/zeros_2/Less/y:output:0*
T0*
_output_shapes
: 2(
&random_zoom_2/zoom_matrix/zeros_2/Less?
*random_zoom_2/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2,
*random_zoom_2/zoom_matrix/zeros_2/packed/1?
(random_zoom_2/zoom_matrix/zeros_2/packedPack0random_zoom_2/zoom_matrix/strided_slice:output:03random_zoom_2/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:2*
(random_zoom_2/zoom_matrix/zeros_2/packed?
'random_zoom_2/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2)
'random_zoom_2/zoom_matrix/zeros_2/Const?
!random_zoom_2/zoom_matrix/zeros_2Fill1random_zoom_2/zoom_matrix/zeros_2/packed:output:00random_zoom_2/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????2#
!random_zoom_2/zoom_matrix/zeros_2?
%random_zoom_2/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2'
%random_zoom_2/zoom_matrix/concat/axis?
 random_zoom_2/zoom_matrix/concatConcatV22random_zoom_2/zoom_matrix/strided_slice_3:output:0(random_zoom_2/zoom_matrix/zeros:output:0!random_zoom_2/zoom_matrix/mul:z:0*random_zoom_2/zoom_matrix/zeros_1:output:02random_zoom_2/zoom_matrix/strided_slice_4:output:0#random_zoom_2/zoom_matrix/mul_1:z:0*random_zoom_2/zoom_matrix/zeros_2:output:0.random_zoom_2/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????2"
 random_zoom_2/zoom_matrix/concat?
random_zoom_2/transform/ShapeShapeKrandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:2
random_zoom_2/transform/Shape?
+random_zoom_2/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+random_zoom_2/transform/strided_slice/stack?
-random_zoom_2/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_2/transform/strided_slice/stack_1?
-random_zoom_2/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-random_zoom_2/transform/strided_slice/stack_2?
%random_zoom_2/transform/strided_sliceStridedSlice&random_zoom_2/transform/Shape:output:04random_zoom_2/transform/strided_slice/stack:output:06random_zoom_2/transform/strided_slice/stack_1:output:06random_zoom_2/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2'
%random_zoom_2/transform/strided_slice?
"random_zoom_2/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"random_zoom_2/transform/fill_value?
2random_zoom_2/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Krandom_rotation_2/transform/ImageProjectiveTransformV3:transformed_images:0)random_zoom_2/zoom_matrix/concat:output:0.random_zoom_2/transform/strided_slice:output:0+random_zoom_2/transform/fill_value:output:0*/
_output_shapes
:?????????xx*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR24
2random_zoom_2/transform/ImageProjectiveTransformV3?
&random_contrast_2/random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB 2(
&random_contrast_2/random_uniform/shape?
$random_contrast_2/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *333?2&
$random_contrast_2/random_uniform/min?
$random_contrast_2/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ff??2&
$random_contrast_2/random_uniform/max?
.random_contrast_2/random_uniform/RandomUniformRandomUniform/random_contrast_2/random_uniform/shape:output:0*
T0*
_output_shapes
: *
dtype020
.random_contrast_2/random_uniform/RandomUniform?
$random_contrast_2/random_uniform/subSub-random_contrast_2/random_uniform/max:output:0-random_contrast_2/random_uniform/min:output:0*
T0*
_output_shapes
: 2&
$random_contrast_2/random_uniform/sub?
$random_contrast_2/random_uniform/mulMul7random_contrast_2/random_uniform/RandomUniform:output:0(random_contrast_2/random_uniform/sub:z:0*
T0*
_output_shapes
: 2&
$random_contrast_2/random_uniform/mul?
 random_contrast_2/random_uniformAdd(random_contrast_2/random_uniform/mul:z:0-random_contrast_2/random_uniform/min:output:0*
T0*
_output_shapes
: 2"
 random_contrast_2/random_uniform?
!random_contrast_2/adjust_contrastAdjustContrastv2Grandom_zoom_2/transform/ImageProjectiveTransformV3:transformed_images:0$random_contrast_2/random_uniform:z:0*/
_output_shapes
:?????????xx2#
!random_contrast_2/adjust_contrast?
*random_contrast_2/adjust_contrast/IdentityIdentity*random_contrast_2/adjust_contrast:output:0*
T0*/
_output_shapes
:?????????xx2,
*random_contrast_2/adjust_contrast/Identity?
IdentityIdentity3random_contrast_2/adjust_contrast/Identity:output:03^random_rotation_2/stateful_uniform/StatefulUniform/^random_zoom_2/stateful_uniform/StatefulUniform*
T0*/
_output_shapes
:?????????xx2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????xx::2h
2random_rotation_2/stateful_uniform/StatefulUniform2random_rotation_2/stateful_uniform/StatefulUniform2`
.random_zoom_2/stateful_uniform/StatefulUniform.random_zoom_2/stateful_uniform/StatefulUniform:W S
/
_output_shapes
:?????????xx
 
_user_specified_nameinputs
?
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_167329

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

*__inference_conv2d_16_layer_call_fn_167277

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_16_layer_call_and_return_conditional_losses_1658422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_165927

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

*__inference_conv2d_18_layer_call_fn_167317

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_18_layer_call_and_return_conditional_losses_1658982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?r
?
H__inference_sequential_5_layer_call_and_return_conditional_losses_166850

inputs,
(conv2d_13_conv2d_readvariableop_resource-
)conv2d_13_biasadd_readvariableop_resource,
(conv2d_14_conv2d_readvariableop_resource-
)conv2d_14_biasadd_readvariableop_resource,
(conv2d_15_conv2d_readvariableop_resource-
)conv2d_15_biasadd_readvariableop_resource,
(conv2d_16_conv2d_readvariableop_resource-
)conv2d_16_biasadd_readvariableop_resource,
(conv2d_17_conv2d_readvariableop_resource-
)conv2d_17_biasadd_readvariableop_resource,
(conv2d_18_conv2d_readvariableop_resource-
)conv2d_18_biasadd_readvariableop_resource1
-batch_normalization_2_readvariableop_resource3
/batch_normalization_2_readvariableop_1_resourceB
>batch_normalization_2_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
&dense_4_matmul_readvariableop_resource+
'dense_4_biasadd_readvariableop_resource*
&dense_5_matmul_readvariableop_resource+
'dense_5_biasadd_readvariableop_resource
identity??5batch_normalization_2/FusedBatchNormV3/ReadVariableOp?7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?$batch_normalization_2/ReadVariableOp?&batch_normalization_2/ReadVariableOp_1? conv2d_13/BiasAdd/ReadVariableOp?conv2d_13/Conv2D/ReadVariableOp? conv2d_14/BiasAdd/ReadVariableOp?conv2d_14/Conv2D/ReadVariableOp? conv2d_15/BiasAdd/ReadVariableOp?conv2d_15/Conv2D/ReadVariableOp? conv2d_16/BiasAdd/ReadVariableOp?conv2d_16/Conv2D/ReadVariableOp? conv2d_17/BiasAdd/ReadVariableOp?conv2d_17/Conv2D/ReadVariableOp? conv2d_18/BiasAdd/ReadVariableOp?conv2d_18/Conv2D/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOpm
rescaling_5/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
rescaling_5/Cast/xq
rescaling_5/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_5/Cast_1/x?
rescaling_5/mulMulinputsrescaling_5/Cast/x:output:0*
T0*/
_output_shapes
:?????????xx2
rescaling_5/mul?
rescaling_5/addAddV2rescaling_5/mul:z:0rescaling_5/Cast_1/x:output:0*
T0*/
_output_shapes
:?????????xx2
rescaling_5/add?
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_13/Conv2D/ReadVariableOp?
conv2d_13/Conv2DConv2Drescaling_5/add:z:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx *
paddingSAME*
strides
2
conv2d_13/Conv2D?
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_13/BiasAdd/ReadVariableOp?
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx 2
conv2d_13/BiasAdd~
conv2d_13/ReluReluconv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:?????????xx 2
conv2d_13/Relu?
max_pooling2d_13/MaxPoolMaxPoolconv2d_13/Relu:activations:0*/
_output_shapes
:?????????<< *
ksize
*
paddingVALID*
strides
2
max_pooling2d_13/MaxPool?
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_14/Conv2D/ReadVariableOp?
conv2d_14/Conv2DConv2D!max_pooling2d_13/MaxPool:output:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@*
paddingSAME*
strides
2
conv2d_14/Conv2D?
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_14/BiasAdd/ReadVariableOp?
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<<@2
conv2d_14/BiasAdd~
conv2d_14/ReluReluconv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:?????????<<@2
conv2d_14/Relu?
max_pooling2d_14/MaxPoolMaxPoolconv2d_14/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_14/MaxPool?
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_15/Conv2D/ReadVariableOp?
conv2d_15/Conv2DConv2D!max_pooling2d_14/MaxPool:output:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_15/Conv2D?
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOp)conv2d_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_15/BiasAdd/ReadVariableOp?
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D:output:0(conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_15/BiasAdd
conv2d_15/ReluReluconv2d_15/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_15/Relu?
max_pooling2d_15/MaxPoolMaxPoolconv2d_15/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_15/MaxPool?
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_16/Conv2D/ReadVariableOp?
conv2d_16/Conv2DConv2D!max_pooling2d_15/MaxPool:output:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_16/Conv2D?
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_16/BiasAdd/ReadVariableOp?
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_16/BiasAdd
conv2d_16/ReluReluconv2d_16/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_16/Relu?
max_pooling2d_16/MaxPoolMaxPoolconv2d_16/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_16/MaxPool?
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_17/Conv2D/ReadVariableOp?
conv2d_17/Conv2DConv2D!max_pooling2d_16/MaxPool:output:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_17/Conv2D?
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_17/BiasAdd/ReadVariableOp?
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_17/BiasAdd
conv2d_17/ReluReluconv2d_17/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_17/Relu?
max_pooling2d_17/MaxPoolMaxPoolconv2d_17/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_17/MaxPool?
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_18/Conv2D/ReadVariableOp?
conv2d_18/Conv2DConv2D!max_pooling2d_17/MaxPool:output:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_18/Conv2D?
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_18/BiasAdd/ReadVariableOp?
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_18/BiasAdd
conv2d_18/ReluReluconv2d_18/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_18/Relu?
max_pooling2d_18/MaxPoolMaxPoolconv2d_18/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_18/MaxPool?
dropout_2/IdentityIdentity!max_pooling2d_18/MaxPool:output:0*
T0*0
_output_shapes
:??????????2
dropout_2/Identity?
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$batch_normalization_2/ReadVariableOp?
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_2/ReadVariableOp_1?
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype027
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp?
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3dropout_2/Identity:output:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2(
&batch_normalization_2/FusedBatchNormV3s
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_2/Const?
flatten_2/ReshapeReshape*batch_normalization_2/FusedBatchNormV3:y:0flatten_2/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_2/Reshape?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_4/MatMul/ReadVariableOp?
dense_4/MatMulMatMulflatten_2/Reshape:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_4/MatMul?
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_4/BiasAdd/ReadVariableOp?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_4/BiasAddq
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_4/Relu?
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	?c*
dtype02
dense_5/MatMul/ReadVariableOp?
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c2
dense_5/MatMul?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:c*
dtype02 
dense_5/BiasAdd/ReadVariableOp?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c2
dense_5/BiasAdd?
IdentityIdentitydense_5/BiasAdd:output:06^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_1!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????c2

Identity"
identityIdentity:output:0*~
_input_shapesm
k:?????????xx::::::::::::::::::::2n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2D
 conv2d_15/BiasAdd/ReadVariableOp conv2d_15/BiasAdd/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp2D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????xx
 
_user_specified_nameinputs
?
?
-__inference_sequential_5_layer_call_fn_166272
sequential_4_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallsequential_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????c*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_1662252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????c2

Identity"
identityIdentity:output:0*?
_input_shapesu
s:?????????xx::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:c _
/
_output_shapes
:?????????xx
,
_user_specified_namesequential_4_input
?
?
-__inference_sequential_4_layer_call_fn_165535
random_flip_2_input
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_2_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????xx* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_1655282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????xx2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????xx::22
StatefulPartitionedCallStatefulPartitionedCall:d `
/
_output_shapes
:?????????xx
-
_user_specified_namerandom_flip_2_input
?
h
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_165574

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_5_layer_call_fn_166899

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????c*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_1662252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????c2

Identity"
identityIdentity:output:0*?
_input_shapesu
s:?????????xx::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????xx
 
_user_specified_nameinputs
?

?
E__inference_conv2d_13_layer_call_and_return_conditional_losses_167208

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????xx 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????xx 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????xx 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????xx::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????xx
 
_user_specified_nameinputs
?
F
*__inference_flatten_2_layer_call_fn_167483

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_1660242
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
C__inference_dense_4_layer_call_and_return_conditional_losses_166043

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

*__inference_conv2d_15_layer_call_fn_167257

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_15_layer_call_and_return_conditional_losses_1658142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_165610

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
C__inference_dense_4_layer_call_and_return_conditional_losses_167494

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_18_layer_call_and_return_conditional_losses_167308

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_167334

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:??????????2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
}
(__inference_dense_5_layer_call_fn_167522

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????c*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_1660692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????c2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_13_layer_call_fn_165556

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_1655502
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_17_layer_call_and_return_conditional_losses_167288

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
Y
sequential_4_inputC
$serving_default_sequential_4_input:0?????????xx;
dense_50
StatefulPartitionedCall:0?????????ctensorflow/serving/predict:??
ٙ
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer-16
layer_with_weights-7
layer-17
layer_with_weights-8
layer-18
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"??
_tf_keras_sequential??{"class_name": "Sequential", "name": "sequential_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 120, 120, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_4_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 120, 120, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_2_input"}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 120, 120, 3]}, "dtype": "float32", "mode": "vertical", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_2", "trainable": true, "dtype": "float32", "factor": 0.25, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_2", "trainable": true, "dtype": "float32", "height_factor": 0.4, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomContrast", "config": {"name": "random_contrast_2", "trainable": true, "dtype": "float32", "factor": 0.3, "seed": null}}]}}, {"class_name": "Rescaling", "config": {"name": "rescaling_5", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}, {"class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_13", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_14", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_15", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_16", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_17", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 1024, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_18", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 320, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 99, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 120, 120, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 120, 120, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_4_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 120, 120, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_2_input"}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 120, 120, 3]}, "dtype": "float32", "mode": "vertical", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_2", "trainable": true, "dtype": "float32", "factor": 0.25, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_2", "trainable": true, "dtype": "float32", "height_factor": 0.4, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomContrast", "config": {"name": "random_contrast_2", "trainable": true, "dtype": "float32", "factor": 0.3, "seed": null}}]}}, {"class_name": "Rescaling", "config": {"name": "rescaling_5", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}, {"class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_13", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_14", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_15", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_16", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_17", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 1024, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_18", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 320, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 99, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
layer-0
layer-1
layer-2
layer-3
	variables
regularization_losses
 trainable_variables
!	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_sequential?{"class_name": "Sequential", "name": "sequential_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 120, 120, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_2_input"}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 120, 120, 3]}, "dtype": "float32", "mode": "vertical", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_2", "trainable": true, "dtype": "float32", "factor": 0.25, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_2", "trainable": true, "dtype": "float32", "height_factor": 0.4, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomContrast", "config": {"name": "random_contrast_2", "trainable": true, "dtype": "float32", "factor": 0.3, "seed": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 120, 120, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 120, 120, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_2_input"}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 120, 120, 3]}, "dtype": "float32", "mode": "vertical", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_2", "trainable": true, "dtype": "float32", "factor": 0.25, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomZoom", "config": {"name": "random_zoom_2", "trainable": true, "dtype": "float32", "height_factor": 0.4, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}, {"class_name": "RandomContrast", "config": {"name": "random_contrast_2", "trainable": true, "dtype": "float32", "factor": 0.3, "seed": null}}]}}}
?
"	keras_api"?
_tf_keras_layer?{"class_name": "Rescaling", "name": "rescaling_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "rescaling_5", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}
?	

#kernel
$bias
%	variables
&regularization_losses
'trainable_variables
(	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 120, 120, 3]}}
?
)	variables
*regularization_losses
+trainable_variables
,	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_13", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

-kernel
.bias
/	variables
0regularization_losses
1trainable_variables
2	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 60, 60, 32]}}
?
3	variables
4regularization_losses
5trainable_variables
6	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_14", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

7kernel
8bias
9	variables
:regularization_losses
;trainable_variables
<	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 30, 30, 64]}}
?
=	variables
>regularization_losses
?trainable_variables
@	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_15", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

Akernel
Bbias
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15, 15, 128]}}
?
G	variables
Hregularization_losses
Itrainable_variables
J	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_16", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

Kkernel
Lbias
M	variables
Nregularization_losses
Otrainable_variables
P	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 7, 256]}}
?
Q	variables
Rregularization_losses
Strainable_variables
T	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_17", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

Ukernel
Vbias
W	variables
Xregularization_losses
Ytrainable_variables
Z	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 1024, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 3, 512]}}
?
[	variables
\regularization_losses
]trainable_variables
^	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_18", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
_	variables
`regularization_losses
atrainable_variables
b	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}
?	
caxis
	dgamma
ebeta
fmoving_mean
gmoving_variance
h	variables
iregularization_losses
jtrainable_variables
k	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 1, 1024]}}
?
l	variables
mregularization_losses
ntrainable_variables
o	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

pkernel
qbias
r	variables
sregularization_losses
ttrainable_variables
u	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 320, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
?

vkernel
wbias
x	variables
yregularization_losses
ztrainable_variables
{	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 99, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 320}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 320]}}
?
|iter

}beta_1

~beta_2
	decay
?learning_rate#m?$m?-m?.m?7m?8m?Am?Bm?Km?Lm?Um?Vm?dm?em?pm?qm?vm?wm?#v?$v?-v?.v?7v?8v?Av?Bv?Kv?Lv?Uv?Vv?dv?ev?pv?qv?vv?wv?"
	optimizer
?
#0
$1
-2
.3
74
85
A6
B7
K8
L9
U10
V11
d12
e13
f14
g15
p16
q17
v18
w19"
trackable_list_wrapper
 "
trackable_list_wrapper
?
#0
$1
-2
.3
74
85
A6
B7
K8
L9
U10
V11
d12
e13
p14
q15
v16
w17"
trackable_list_wrapper
?
	variables
?layers
?non_trainable_variables
regularization_losses
?metrics
?layer_metrics
trainable_variables
 ?layer_regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
	?_rng
?	keras_api"?
_tf_keras_layer?{"class_name": "RandomFlip", "name": "random_flip_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 120, 120, 3]}, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_flip_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 120, 120, 3]}, "dtype": "float32", "mode": "vertical", "seed": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
	?_rng
?	keras_api"?
_tf_keras_layer?{"class_name": "RandomRotation", "name": "random_rotation_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_rotation_2", "trainable": true, "dtype": "float32", "factor": 0.25, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}
?
	?_rng
?	keras_api"?
_tf_keras_layer?{"class_name": "RandomZoom", "name": "random_zoom_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_zoom_2", "trainable": true, "dtype": "float32", "height_factor": 0.4, "width_factor": null, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}
?
?	keras_api"?
_tf_keras_layer?{"class_name": "RandomContrast", "name": "random_contrast_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "random_contrast_2", "trainable": true, "dtype": "float32", "factor": 0.3, "seed": null}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
?layers
?non_trainable_variables
regularization_losses
?metrics
?layer_metrics
 trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
*:( 2conv2d_13/kernel
: 2conv2d_13/bias
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
?
%	variables
?layers
?non_trainable_variables
&regularization_losses
?metrics
?layer_metrics
'trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
)	variables
?layers
?non_trainable_variables
*regularization_losses
?metrics
?layer_metrics
+trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:( @2conv2d_14/kernel
:@2conv2d_14/bias
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
?
/	variables
?layers
?non_trainable_variables
0regularization_losses
?metrics
?layer_metrics
1trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
3	variables
?layers
?non_trainable_variables
4regularization_losses
?metrics
?layer_metrics
5trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)@?2conv2d_15/kernel
:?2conv2d_15/bias
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
?
9	variables
?layers
?non_trainable_variables
:regularization_losses
?metrics
?layer_metrics
;trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
=	variables
?layers
?non_trainable_variables
>regularization_losses
?metrics
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*??2conv2d_16/kernel
:?2conv2d_16/bias
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
?
C	variables
?layers
?non_trainable_variables
Dregularization_losses
?metrics
?layer_metrics
Etrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
G	variables
?layers
?non_trainable_variables
Hregularization_losses
?metrics
?layer_metrics
Itrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*??2conv2d_17/kernel
:?2conv2d_17/bias
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
?
M	variables
?layers
?non_trainable_variables
Nregularization_losses
?metrics
?layer_metrics
Otrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Q	variables
?layers
?non_trainable_variables
Rregularization_losses
?metrics
?layer_metrics
Strainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*??2conv2d_18/kernel
:?2conv2d_18/bias
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
?
W	variables
?layers
?non_trainable_variables
Xregularization_losses
?metrics
?layer_metrics
Ytrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
[	variables
?layers
?non_trainable_variables
\regularization_losses
?metrics
?layer_metrics
]trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
_	variables
?layers
?non_trainable_variables
`regularization_losses
?metrics
?layer_metrics
atrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(?2batch_normalization_2/gamma
):'?2batch_normalization_2/beta
2:0? (2!batch_normalization_2/moving_mean
6:4? (2%batch_normalization_2/moving_variance
<
d0
e1
f2
g3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
?
h	variables
?layers
?non_trainable_variables
iregularization_losses
?metrics
?layer_metrics
jtrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
l	variables
?layers
?non_trainable_variables
mregularization_losses
?metrics
?layer_metrics
ntrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
??2dense_4/kernel
:?2dense_4/bias
.
p0
q1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
?
r	variables
?layers
?non_trainable_variables
sregularization_losses
?metrics
?layer_metrics
ttrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?c2dense_5/kernel
:c2dense_5/bias
.
v0
w1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
?
x	variables
?layers
?non_trainable_variables
yregularization_losses
?metrics
?layer_metrics
ztrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18"
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
/
?
_state_var"
_generic_user_object
"
_generic_user_object
/
?
_state_var"
_generic_user_object
"
_generic_user_object
/
?
_state_var"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}
:	2Variable
:	2Variable
:	2Variable
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
/:- 2Adam/conv2d_13/kernel/m
!: 2Adam/conv2d_13/bias/m
/:- @2Adam/conv2d_14/kernel/m
!:@2Adam/conv2d_14/bias/m
0:.@?2Adam/conv2d_15/kernel/m
": ?2Adam/conv2d_15/bias/m
1:/??2Adam/conv2d_16/kernel/m
": ?2Adam/conv2d_16/bias/m
1:/??2Adam/conv2d_17/kernel/m
": ?2Adam/conv2d_17/bias/m
1:/??2Adam/conv2d_18/kernel/m
": ?2Adam/conv2d_18/bias/m
/:-?2"Adam/batch_normalization_2/gamma/m
.:,?2!Adam/batch_normalization_2/beta/m
':%
??2Adam/dense_4/kernel/m
 :?2Adam/dense_4/bias/m
&:$	?c2Adam/dense_5/kernel/m
:c2Adam/dense_5/bias/m
/:- 2Adam/conv2d_13/kernel/v
!: 2Adam/conv2d_13/bias/v
/:- @2Adam/conv2d_14/kernel/v
!:@2Adam/conv2d_14/bias/v
0:.@?2Adam/conv2d_15/kernel/v
": ?2Adam/conv2d_15/bias/v
1:/??2Adam/conv2d_16/kernel/v
": ?2Adam/conv2d_16/bias/v
1:/??2Adam/conv2d_17/kernel/v
": ?2Adam/conv2d_17/bias/v
1:/??2Adam/conv2d_18/kernel/v
": ?2Adam/conv2d_18/bias/v
/:-?2"Adam/batch_normalization_2/gamma/v
.:,?2!Adam/batch_normalization_2/beta/v
':%
??2Adam/dense_4/kernel/v
 :?2Adam/dense_4/bias/v
&:$	?c2Adam/dense_5/kernel/v
:c2Adam/dense_5/bias/v
?2?
!__inference__wrapped_model_165050?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *9?6
4?1
sequential_4_input?????????xx
?2?
-__inference_sequential_5_layer_call_fn_166899
-__inference_sequential_5_layer_call_fn_166944
-__inference_sequential_5_layer_call_fn_166272
-__inference_sequential_5_layer_call_fn_166383?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_5_layer_call_and_return_conditional_losses_166086
H__inference_sequential_5_layer_call_and_return_conditional_losses_166764
H__inference_sequential_5_layer_call_and_return_conditional_losses_166850
H__inference_sequential_5_layer_call_and_return_conditional_losses_166152?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_sequential_4_layer_call_fn_167192
-__inference_sequential_4_layer_call_fn_165535
-__inference_sequential_4_layer_call_fn_165544
-__inference_sequential_4_layer_call_fn_167197?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_4_layer_call_and_return_conditional_losses_167183
H__inference_sequential_4_layer_call_and_return_conditional_losses_167179
H__inference_sequential_4_layer_call_and_return_conditional_losses_165286
H__inference_sequential_4_layer_call_and_return_conditional_losses_165290?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_conv2d_13_layer_call_fn_167217?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_13_layer_call_and_return_conditional_losses_167208?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_max_pooling2d_13_layer_call_fn_165556?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_165550?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
*__inference_conv2d_14_layer_call_fn_167237?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_14_layer_call_and_return_conditional_losses_167228?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_max_pooling2d_14_layer_call_fn_165568?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_165562?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
*__inference_conv2d_15_layer_call_fn_167257?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_15_layer_call_and_return_conditional_losses_167248?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_max_pooling2d_15_layer_call_fn_165580?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_165574?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
*__inference_conv2d_16_layer_call_fn_167277?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_16_layer_call_and_return_conditional_losses_167268?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_max_pooling2d_16_layer_call_fn_165592?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_165586?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
*__inference_conv2d_17_layer_call_fn_167297?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_17_layer_call_and_return_conditional_losses_167288?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_max_pooling2d_17_layer_call_fn_165604?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_165598?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
*__inference_conv2d_18_layer_call_fn_167317?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_18_layer_call_and_return_conditional_losses_167308?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_max_pooling2d_18_layer_call_fn_165616?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_165610?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
*__inference_dropout_2_layer_call_fn_167339
*__inference_dropout_2_layer_call_fn_167344?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_2_layer_call_and_return_conditional_losses_167329
E__inference_dropout_2_layer_call_and_return_conditional_losses_167334?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
6__inference_batch_normalization_2_layer_call_fn_167459
6__inference_batch_normalization_2_layer_call_fn_167395
6__inference_batch_normalization_2_layer_call_fn_167472
6__inference_batch_normalization_2_layer_call_fn_167408?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_167446
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_167428
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_167382
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_167364?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_flatten_2_layer_call_fn_167483?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_flatten_2_layer_call_and_return_conditional_losses_167478?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_4_layer_call_fn_167503?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_4_layer_call_and_return_conditional_losses_167494?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_5_layer_call_fn_167522?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_5_layer_call_and_return_conditional_losses_167513?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_166438sequential_4_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_165050?#$-.78ABKLUVdefgpqvwC?@
9?6
4?1
sequential_4_input?????????xx
? "1?.
,
dense_5!?
dense_5?????????c?
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_167364?defgN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_167382?defgN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_167428tdefg<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_167446tdefg<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
6__inference_batch_normalization_2_layer_call_fn_167395?defgN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
6__inference_batch_normalization_2_layer_call_fn_167408?defgN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
6__inference_batch_normalization_2_layer_call_fn_167459gdefg<?9
2?/
)?&
inputs??????????
p
? "!????????????
6__inference_batch_normalization_2_layer_call_fn_167472gdefg<?9
2?/
)?&
inputs??????????
p 
? "!????????????
E__inference_conv2d_13_layer_call_and_return_conditional_losses_167208l#$7?4
-?*
(?%
inputs?????????xx
? "-?*
#? 
0?????????xx 
? ?
*__inference_conv2d_13_layer_call_fn_167217_#$7?4
-?*
(?%
inputs?????????xx
? " ??????????xx ?
E__inference_conv2d_14_layer_call_and_return_conditional_losses_167228l-.7?4
-?*
(?%
inputs?????????<< 
? "-?*
#? 
0?????????<<@
? ?
*__inference_conv2d_14_layer_call_fn_167237_-.7?4
-?*
(?%
inputs?????????<< 
? " ??????????<<@?
E__inference_conv2d_15_layer_call_and_return_conditional_losses_167248m787?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
*__inference_conv2d_15_layer_call_fn_167257`787?4
-?*
(?%
inputs?????????@
? "!????????????
E__inference_conv2d_16_layer_call_and_return_conditional_losses_167268nAB8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
*__inference_conv2d_16_layer_call_fn_167277aAB8?5
.?+
)?&
inputs??????????
? "!????????????
E__inference_conv2d_17_layer_call_and_return_conditional_losses_167288nKL8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
*__inference_conv2d_17_layer_call_fn_167297aKL8?5
.?+
)?&
inputs??????????
? "!????????????
E__inference_conv2d_18_layer_call_and_return_conditional_losses_167308nUV8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
*__inference_conv2d_18_layer_call_fn_167317aUV8?5
.?+
)?&
inputs??????????
? "!????????????
C__inference_dense_4_layer_call_and_return_conditional_losses_167494^pq0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? }
(__inference_dense_4_layer_call_fn_167503Qpq0?-
&?#
!?
inputs??????????
? "????????????
C__inference_dense_5_layer_call_and_return_conditional_losses_167513]vw0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????c
? |
(__inference_dense_5_layer_call_fn_167522Pvw0?-
&?#
!?
inputs??????????
? "??????????c?
E__inference_dropout_2_layer_call_and_return_conditional_losses_167329n<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
E__inference_dropout_2_layer_call_and_return_conditional_losses_167334n<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
*__inference_dropout_2_layer_call_fn_167339a<?9
2?/
)?&
inputs??????????
p
? "!????????????
*__inference_dropout_2_layer_call_fn_167344a<?9
2?/
)?&
inputs??????????
p 
? "!????????????
E__inference_flatten_2_layer_call_and_return_conditional_losses_167478b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????
? ?
*__inference_flatten_2_layer_call_fn_167483U8?5
.?+
)?&
inputs??????????
? "????????????
L__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_165550?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_13_layer_call_fn_165556?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_165562?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_14_layer_call_fn_165568?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_165574?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_15_layer_call_fn_165580?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_165586?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_16_layer_call_fn_165592?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_165598?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_17_layer_call_fn_165604?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_165610?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_18_layer_call_fn_165616?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
H__inference_sequential_4_layer_call_and_return_conditional_losses_165286???L?I
B??
5?2
random_flip_2_input?????????xx
p

 
? "-?*
#? 
0?????????xx
? ?
H__inference_sequential_4_layer_call_and_return_conditional_losses_165290}L?I
B??
5?2
random_flip_2_input?????????xx
p 

 
? "-?*
#? 
0?????????xx
? ?
H__inference_sequential_4_layer_call_and_return_conditional_losses_167179v????<
5?2
(?%
inputs?????????xx
p

 
? "-?*
#? 
0?????????xx
? ?
H__inference_sequential_4_layer_call_and_return_conditional_losses_167183p??<
5?2
(?%
inputs?????????xx
p 

 
? "-?*
#? 
0?????????xx
? ?
-__inference_sequential_4_layer_call_fn_165535v??L?I
B??
5?2
random_flip_2_input?????????xx
p

 
? " ??????????xx?
-__inference_sequential_4_layer_call_fn_165544pL?I
B??
5?2
random_flip_2_input?????????xx
p 

 
? " ??????????xx?
-__inference_sequential_4_layer_call_fn_167192i????<
5?2
(?%
inputs?????????xx
p

 
? " ??????????xx?
-__inference_sequential_4_layer_call_fn_167197c??<
5?2
(?%
inputs?????????xx
p 

 
? " ??????????xx?
H__inference_sequential_5_layer_call_and_return_conditional_losses_166086???#$-.78ABKLUVdefgpqvwK?H
A?>
4?1
sequential_4_input?????????xx
p

 
? "%?"
?
0?????????c
? ?
H__inference_sequential_5_layer_call_and_return_conditional_losses_166152?#$-.78ABKLUVdefgpqvwK?H
A?>
4?1
sequential_4_input?????????xx
p 

 
? "%?"
?
0?????????c
? ?
H__inference_sequential_5_layer_call_and_return_conditional_losses_166764???#$-.78ABKLUVdefgpqvw??<
5?2
(?%
inputs?????????xx
p

 
? "%?"
?
0?????????c
? ?
H__inference_sequential_5_layer_call_and_return_conditional_losses_166850~#$-.78ABKLUVdefgpqvw??<
5?2
(?%
inputs?????????xx
p 

 
? "%?"
?
0?????????c
? ?
-__inference_sequential_5_layer_call_fn_166272???#$-.78ABKLUVdefgpqvwK?H
A?>
4?1
sequential_4_input?????????xx
p

 
? "??????????c?
-__inference_sequential_5_layer_call_fn_166383}#$-.78ABKLUVdefgpqvwK?H
A?>
4?1
sequential_4_input?????????xx
p 

 
? "??????????c?
-__inference_sequential_5_layer_call_fn_166899u??#$-.78ABKLUVdefgpqvw??<
5?2
(?%
inputs?????????xx
p

 
? "??????????c?
-__inference_sequential_5_layer_call_fn_166944q#$-.78ABKLUVdefgpqvw??<
5?2
(?%
inputs?????????xx
p 

 
? "??????????c?
$__inference_signature_wrapper_166438?#$-.78ABKLUVdefgpqvwY?V
? 
O?L
J
sequential_4_input4?1
sequential_4_input?????????xx"1?.
,
dense_5!?
dense_5?????????c