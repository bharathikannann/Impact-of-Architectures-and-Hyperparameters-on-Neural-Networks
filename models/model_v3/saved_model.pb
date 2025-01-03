��'
��
.
Abs
x"T
y"T"
Ttype:

2	
B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
�
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
�
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
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
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
�
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
delete_old_dirsbool(�
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
0
Sigmoid
x"T
y"T"
Ttype:

2
�
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
executor_typestring �
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.5.22v2.5.2-0-g957590ea15c8�� 
y
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_namedense_9/kernel
r
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes
:	�*
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:*
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
�
conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_12/kernel
}
$conv2d_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_12/kernel*&
_output_shapes
: *
dtype0
t
conv2d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_12/bias
m
"conv2d_12/bias/Read/ReadVariableOpReadVariableOpconv2d_12/bias*
_output_shapes
: *
dtype0
�
batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_6/gamma
�
/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_6/gamma*
_output_shapes
: *
dtype0
�
batch_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namebatch_normalization_6/beta
�
.batch_normalization_6/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_6/beta*
_output_shapes
: *
dtype0
�
!batch_normalization_6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!batch_normalization_6/moving_mean
�
5batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_6/moving_mean*
_output_shapes
: *
dtype0
�
%batch_normalization_6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%batch_normalization_6/moving_variance
�
9batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_6/moving_variance*
_output_shapes
: *
dtype0
�
conv2d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_13/kernel
}
$conv2d_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_13/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_13/bias
m
"conv2d_13/bias/Read/ReadVariableOpReadVariableOpconv2d_13/bias*
_output_shapes
:@*
dtype0
�
batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_7/gamma
�
/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_7/gamma*
_output_shapes
:@*
dtype0
�
batch_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_7/beta
�
.batch_normalization_7/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_7/beta*
_output_shapes
:@*
dtype0
�
!batch_normalization_7/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_7/moving_mean
�
5batch_normalization_7/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_7/moving_mean*
_output_shapes
:@*
dtype0
�
%batch_normalization_7/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_7/moving_variance
�
9batch_normalization_7/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_7/moving_variance*
_output_shapes
:@*
dtype0
�
conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*!
shared_nameconv2d_14/kernel
~
$conv2d_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_14/kernel*'
_output_shapes
:@�*
dtype0
u
conv2d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_14/bias
n
"conv2d_14/bias/Read/ReadVariableOpReadVariableOpconv2d_14/bias*
_output_shapes	
:�*
dtype0
�
batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_8/gamma
�
/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_8/gamma*
_output_shapes	
:�*
dtype0
�
batch_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namebatch_normalization_8/beta
�
.batch_normalization_8/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_8/beta*
_output_shapes	
:�*
dtype0
�
!batch_normalization_8/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!batch_normalization_8/moving_mean
�
5batch_normalization_8/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_8/moving_mean*
_output_shapes	
:�*
dtype0
�
%batch_normalization_8/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*6
shared_name'%batch_normalization_8/moving_variance
�
9batch_normalization_8/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_8/moving_variance*
_output_shapes	
:�*
dtype0
z
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�Q�*
shared_namedense_8/kernel
s
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel* 
_output_shapes
:
�Q�*
dtype0
q
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_8/bias
j
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes	
:�*
dtype0
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
�
Adam/dense_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*&
shared_nameAdam/dense_9/kernel/m
�
)Adam/dense_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/m*
_output_shapes
:	�*
dtype0
~
Adam/dense_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_9/bias/m
w
'Adam/dense_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv2d_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_12/kernel/m
�
+Adam/conv2d_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/kernel/m*&
_output_shapes
: *
dtype0
�
Adam/conv2d_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_12/bias/m
{
)Adam/conv2d_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/bias/m*
_output_shapes
: *
dtype0
�
"Adam/batch_normalization_6/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_6/gamma/m
�
6Adam/batch_normalization_6/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_6/gamma/m*
_output_shapes
: *
dtype0
�
!Adam/batch_normalization_6/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/batch_normalization_6/beta/m
�
5Adam/batch_normalization_6/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_6/beta/m*
_output_shapes
: *
dtype0
�
Adam/conv2d_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_13/kernel/m
�
+Adam/conv2d_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/kernel/m*&
_output_shapes
: @*
dtype0
�
Adam/conv2d_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_13/bias/m
{
)Adam/conv2d_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/bias/m*
_output_shapes
:@*
dtype0
�
"Adam/batch_normalization_7/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_7/gamma/m
�
6Adam/batch_normalization_7/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_7/gamma/m*
_output_shapes
:@*
dtype0
�
!Adam/batch_normalization_7/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_7/beta/m
�
5Adam/batch_normalization_7/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_7/beta/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*(
shared_nameAdam/conv2d_14/kernel/m
�
+Adam/conv2d_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/kernel/m*'
_output_shapes
:@�*
dtype0
�
Adam/conv2d_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/conv2d_14/bias/m
|
)Adam/conv2d_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/bias/m*
_output_shapes	
:�*
dtype0
�
"Adam/batch_normalization_8/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/batch_normalization_8/gamma/m
�
6Adam/batch_normalization_8/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_8/gamma/m*
_output_shapes	
:�*
dtype0
�
!Adam/batch_normalization_8/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/batch_normalization_8/beta/m
�
5Adam/batch_normalization_8/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_8/beta/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�Q�*&
shared_nameAdam/dense_8/kernel/m
�
)Adam/dense_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/m* 
_output_shapes
:
�Q�*
dtype0

Adam/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameAdam/dense_8/bias/m
x
'Adam/dense_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*&
shared_nameAdam/dense_9/kernel/v
�
)Adam/dense_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/v*
_output_shapes
:	�*
dtype0
~
Adam/dense_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_9/bias/v
w
'Adam/dense_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/v*
_output_shapes
:*
dtype0
�
Adam/conv2d_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_12/kernel/v
�
+Adam/conv2d_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/kernel/v*&
_output_shapes
: *
dtype0
�
Adam/conv2d_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_12/bias/v
{
)Adam/conv2d_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_12/bias/v*
_output_shapes
: *
dtype0
�
"Adam/batch_normalization_6/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_6/gamma/v
�
6Adam/batch_normalization_6/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_6/gamma/v*
_output_shapes
: *
dtype0
�
!Adam/batch_normalization_6/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/batch_normalization_6/beta/v
�
5Adam/batch_normalization_6/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_6/beta/v*
_output_shapes
: *
dtype0
�
Adam/conv2d_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_13/kernel/v
�
+Adam/conv2d_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/kernel/v*&
_output_shapes
: @*
dtype0
�
Adam/conv2d_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_13/bias/v
{
)Adam/conv2d_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_13/bias/v*
_output_shapes
:@*
dtype0
�
"Adam/batch_normalization_7/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_7/gamma/v
�
6Adam/batch_normalization_7/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_7/gamma/v*
_output_shapes
:@*
dtype0
�
!Adam/batch_normalization_7/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_7/beta/v
�
5Adam/batch_normalization_7/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_7/beta/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*(
shared_nameAdam/conv2d_14/kernel/v
�
+Adam/conv2d_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/kernel/v*'
_output_shapes
:@�*
dtype0
�
Adam/conv2d_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/conv2d_14/bias/v
|
)Adam/conv2d_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_14/bias/v*
_output_shapes	
:�*
dtype0
�
"Adam/batch_normalization_8/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/batch_normalization_8/gamma/v
�
6Adam/batch_normalization_8/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_8/gamma/v*
_output_shapes	
:�*
dtype0
�
!Adam/batch_normalization_8/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/batch_normalization_8/beta/v
�
5Adam/batch_normalization_8/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_8/beta/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�Q�*&
shared_nameAdam/dense_8/kernel/v
�
)Adam/dense_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/v* 
_output_shapes
:
�Q�*
dtype0

Adam/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameAdam/dense_8/bias/v
x
'Adam/dense_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/v*
_output_shapes	
:�*
dtype0

NoOpNoOp
�t
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�s
value�sB�s B�s
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
 
 
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
layer-8
layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer-12
layer-13
layer-14
layer-15
layer_with_weights-6
layer-16
	variables
trainable_variables
regularization_losses
 	keras_api
R
!	variables
"trainable_variables
#regularization_losses
$	keras_api
h

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
�
+iter

,beta_1

-beta_2
	.decay%m�&m�/m�0m�1m�2m�5m�6m�7m�8m�;m�<m�=m�>m�Am�Bm�%v�&v�/v�0v�1v�2v�5v�6v�7v�8v�;v�<v�=v�>v�Av�Bv�
�
/0
01
12
23
34
45
56
67
78
89
910
:11
;12
<13
=14
>15
?16
@17
A18
B19
%20
&21
v
/0
01
12
23
54
65
76
87
;8
<9
=10
>11
A12
B13
%14
&15
 
�
	variables
trainable_variables
Cmetrics
Dlayer_regularization_losses
Enon_trainable_variables
Flayer_metrics

Glayers
	regularization_losses
 
h

/kernel
0bias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
�
Laxis
	1gamma
2beta
3moving_mean
4moving_variance
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
R
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
R
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
R
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
h

5kernel
6bias
]	variables
^trainable_variables
_regularization_losses
`	keras_api
�
aaxis
	7gamma
8beta
9moving_mean
:moving_variance
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
R
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
R
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
R
n	variables
otrainable_variables
pregularization_losses
q	keras_api
h

;kernel
<bias
r	variables
strainable_variables
tregularization_losses
u	keras_api
�
vaxis
	=gamma
>beta
?moving_mean
@moving_variance
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
R
{	variables
|trainable_variables
}regularization_losses
~	keras_api
U
	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
l

Akernel
Bbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
/0
01
12
23
34
45
56
67
78
89
910
:11
;12
<13
=14
>15
?16
@17
A18
B19
f
/0
01
12
23
54
65
76
87
;8
<9
=10
>11
A12
B13
 
�
	variables
trainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
regularization_losses
 
 
 
�
!	variables
"trainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
#regularization_losses
ZX
VARIABLE_VALUEdense_9/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_9/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

%0
&1

%0
&1
 
�
'	variables
(trainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
)regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEconv2d_12/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEconv2d_12/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEbatch_normalization_6/gamma&variables/2/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEbatch_normalization_6/beta&variables/3/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE!batch_normalization_6/moving_mean&variables/4/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%batch_normalization_6/moving_variance&variables/5/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEconv2d_13/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEconv2d_13/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEbatch_normalization_7/gamma&variables/8/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEbatch_normalization_7/beta&variables/9/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!batch_normalization_7/moving_mean'variables/10/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%batch_normalization_7/moving_variance'variables/11/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEconv2d_14/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEconv2d_14/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEbatch_normalization_8/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEbatch_normalization_8/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!batch_normalization_8/moving_mean'variables/16/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%batch_normalization_8/moving_variance'variables/17/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_8/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_8/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE

�0
�1
 
*
30
41
92
:3
?4
@5
 
#
0
1
2
3
4

/0
01

/0
01
 
�
H	variables
Itrainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
Jregularization_losses
 

10
21
32
43

10
21
 
�
M	variables
Ntrainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
Oregularization_losses
 
 
 
�
Q	variables
Rtrainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
Sregularization_losses
 
 
 
�
U	variables
Vtrainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
Wregularization_losses
 
 
 
�
Y	variables
Ztrainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
[regularization_losses

50
61

50
61
 
�
]	variables
^trainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
_regularization_losses
 

70
81
92
:3

70
81
 
�
b	variables
ctrainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
dregularization_losses
 
 
 
�
f	variables
gtrainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
hregularization_losses
 
 
 
�
j	variables
ktrainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
lregularization_losses
 
 
 
�
n	variables
otrainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
pregularization_losses

;0
<1

;0
<1
 
�
r	variables
strainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
tregularization_losses
 

=0
>1
?2
@3

=0
>1
 
�
w	variables
xtrainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
yregularization_losses
 
 
 
�
{	variables
|trainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
}regularization_losses
 
 
 
�
	variables
�trainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
�regularization_losses
 
 
 
�
�	variables
�trainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
�regularization_losses
 
 
 
�
�	variables
�trainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
�regularization_losses

A0
B1

A0
B1
 
�
�	variables
�trainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
�regularization_losses
 
 
*
30
41
92
:3
?4
@5
 
~
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
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

�total

�count
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
 
 
 
 
 
 
 

30
41
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
90
:1
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
?0
@1
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
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
}{
VARIABLE_VALUEAdam/dense_9/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_9/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/conv2d_12/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/conv2d_12/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/batch_normalization_6/gamma/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE!Adam/batch_normalization_6/beta/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/conv2d_13/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/conv2d_13/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/batch_normalization_7/gamma/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE!Adam/batch_normalization_7/beta/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/conv2d_14/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_14/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Adam/batch_normalization_8/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE!Adam/batch_normalization_8/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_8/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_8/bias/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_9/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_9/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/conv2d_12/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/conv2d_12/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/batch_normalization_6/gamma/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE!Adam/batch_normalization_6/beta/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/conv2d_13/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/conv2d_13/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/batch_normalization_7/gamma/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE!Adam/batch_normalization_7/beta/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/conv2d_14/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_14/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Adam/batch_normalization_8/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE!Adam/batch_normalization_8/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_8/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_8/bias/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_input_10Placeholder*/
_output_shapes
:���������ii*
dtype0*$
shape:���������ii
�
serving_default_input_9Placeholder*/
_output_shapes
:���������ii*
dtype0*$
shape:���������ii
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_10serving_default_input_9conv2d_12/kernelconv2d_12/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_13/kernelconv2d_13/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_varianceconv2d_14/kernelconv2d_14/biasbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_variancedense_8/kerneldense_8/biasdense_9/kerneldense_9/bias*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *.
f)R'
%__inference_signature_wrapper_3291787
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp$conv2d_12/kernel/Read/ReadVariableOp"conv2d_12/bias/Read/ReadVariableOp/batch_normalization_6/gamma/Read/ReadVariableOp.batch_normalization_6/beta/Read/ReadVariableOp5batch_normalization_6/moving_mean/Read/ReadVariableOp9batch_normalization_6/moving_variance/Read/ReadVariableOp$conv2d_13/kernel/Read/ReadVariableOp"conv2d_13/bias/Read/ReadVariableOp/batch_normalization_7/gamma/Read/ReadVariableOp.batch_normalization_7/beta/Read/ReadVariableOp5batch_normalization_7/moving_mean/Read/ReadVariableOp9batch_normalization_7/moving_variance/Read/ReadVariableOp$conv2d_14/kernel/Read/ReadVariableOp"conv2d_14/bias/Read/ReadVariableOp/batch_normalization_8/gamma/Read/ReadVariableOp.batch_normalization_8/beta/Read/ReadVariableOp5batch_normalization_8/moving_mean/Read/ReadVariableOp9batch_normalization_8/moving_variance/Read/ReadVariableOp"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp)Adam/dense_9/kernel/m/Read/ReadVariableOp'Adam/dense_9/bias/m/Read/ReadVariableOp+Adam/conv2d_12/kernel/m/Read/ReadVariableOp)Adam/conv2d_12/bias/m/Read/ReadVariableOp6Adam/batch_normalization_6/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_6/beta/m/Read/ReadVariableOp+Adam/conv2d_13/kernel/m/Read/ReadVariableOp)Adam/conv2d_13/bias/m/Read/ReadVariableOp6Adam/batch_normalization_7/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_7/beta/m/Read/ReadVariableOp+Adam/conv2d_14/kernel/m/Read/ReadVariableOp)Adam/conv2d_14/bias/m/Read/ReadVariableOp6Adam/batch_normalization_8/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_8/beta/m/Read/ReadVariableOp)Adam/dense_8/kernel/m/Read/ReadVariableOp'Adam/dense_8/bias/m/Read/ReadVariableOp)Adam/dense_9/kernel/v/Read/ReadVariableOp'Adam/dense_9/bias/v/Read/ReadVariableOp+Adam/conv2d_12/kernel/v/Read/ReadVariableOp)Adam/conv2d_12/bias/v/Read/ReadVariableOp6Adam/batch_normalization_6/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_6/beta/v/Read/ReadVariableOp+Adam/conv2d_13/kernel/v/Read/ReadVariableOp)Adam/conv2d_13/bias/v/Read/ReadVariableOp6Adam/batch_normalization_7/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_7/beta/v/Read/ReadVariableOp+Adam/conv2d_14/kernel/v/Read/ReadVariableOp)Adam/conv2d_14/bias/v/Read/ReadVariableOp6Adam/batch_normalization_8/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_8/beta/v/Read/ReadVariableOp)Adam/dense_8/kernel/v/Read/ReadVariableOp'Adam/dense_8/bias/v/Read/ReadVariableOpConst*K
TinD
B2@	*
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
GPU2*0J 8� *)
f$R"
 __inference__traced_save_3293585
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_9/kerneldense_9/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayconv2d_12/kernelconv2d_12/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_varianceconv2d_13/kernelconv2d_13/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_varianceconv2d_14/kernelconv2d_14/biasbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_variancedense_8/kerneldense_8/biastotalcounttotal_1count_1Adam/dense_9/kernel/mAdam/dense_9/bias/mAdam/conv2d_12/kernel/mAdam/conv2d_12/bias/m"Adam/batch_normalization_6/gamma/m!Adam/batch_normalization_6/beta/mAdam/conv2d_13/kernel/mAdam/conv2d_13/bias/m"Adam/batch_normalization_7/gamma/m!Adam/batch_normalization_7/beta/mAdam/conv2d_14/kernel/mAdam/conv2d_14/bias/m"Adam/batch_normalization_8/gamma/m!Adam/batch_normalization_8/beta/mAdam/dense_8/kernel/mAdam/dense_8/bias/mAdam/dense_9/kernel/vAdam/dense_9/bias/vAdam/conv2d_12/kernel/vAdam/conv2d_12/bias/v"Adam/batch_normalization_6/gamma/v!Adam/batch_normalization_6/beta/vAdam/conv2d_13/kernel/vAdam/conv2d_13/bias/v"Adam/batch_normalization_7/gamma/v!Adam/batch_normalization_7/beta/vAdam/conv2d_14/kernel/vAdam/conv2d_14/bias/v"Adam/batch_normalization_8/gamma/v!Adam/batch_normalization_8/beta/vAdam/dense_8/kernel/vAdam/dense_8/bias/v*J
TinC
A2?*
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
GPU2*0J 8� *,
f'R%
#__inference__traced_restore_3293781��
�
�
)__inference_model_4_layer_call_fn_3292293
inputs_0
inputs_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:
�Q�

unknown_18:	�

unknown_19:	�

unknown_20:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_model_4_layer_call_and_return_conditional_losses_32913982
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:���������ii:���������ii: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:���������ii
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:���������ii
"
_user_specified_name
inputs/1
�
N
2__inference_max_pooling2d_12_layer_call_fn_3289801

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_32897952
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_3292971

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
7__inference_batch_normalization_7_layer_call_fn_3293020

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_32898232
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
D__inference_dense_9_layer_call_and_return_conditional_losses_3291128

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�0dense_9/kernel/Regularizer/Square/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������2	
Sigmoid�
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp�
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2#
!dense_9/kernel/Regularizer/Square�
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const�
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum�
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2"
 dense_9/kernel/Regularizer/mul/x�
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mul�
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_9/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�U
�

D__inference_model_4_layer_call_and_return_conditional_losses_3291701
input_9
input_10.
sequential_4_3291602: "
sequential_4_3291604: "
sequential_4_3291606: "
sequential_4_3291608: "
sequential_4_3291610: "
sequential_4_3291612: .
sequential_4_3291614: @"
sequential_4_3291616:@"
sequential_4_3291618:@"
sequential_4_3291620:@"
sequential_4_3291622:@"
sequential_4_3291624:@/
sequential_4_3291626:@�#
sequential_4_3291628:	�#
sequential_4_3291630:	�#
sequential_4_3291632:	�#
sequential_4_3291634:	�#
sequential_4_3291636:	�(
sequential_4_3291638:
�Q�#
sequential_4_3291640:	�"
dense_9_3291665:	�
dense_9_3291667:
identity��2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�0dense_8/kernel/Regularizer/Square/ReadVariableOp�dense_9/StatefulPartitionedCall�0dense_9/kernel/Regularizer/Square/ReadVariableOp�$sequential_4/StatefulPartitionedCall�&sequential_4/StatefulPartitionedCall_1�
$sequential_4/StatefulPartitionedCallStatefulPartitionedCallinput_9sequential_4_3291602sequential_4_3291604sequential_4_3291606sequential_4_3291608sequential_4_3291610sequential_4_3291612sequential_4_3291614sequential_4_3291616sequential_4_3291618sequential_4_3291620sequential_4_3291622sequential_4_3291624sequential_4_3291626sequential_4_3291628sequential_4_3291630sequential_4_3291632sequential_4_3291634sequential_4_3291636sequential_4_3291638sequential_4_3291640* 
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_32907732&
$sequential_4/StatefulPartitionedCall�
&sequential_4/StatefulPartitionedCall_1StatefulPartitionedCallinput_10sequential_4_3291602sequential_4_3291604sequential_4_3291606sequential_4_3291608sequential_4_3291610sequential_4_3291612sequential_4_3291614sequential_4_3291616sequential_4_3291618sequential_4_3291620sequential_4_3291622sequential_4_3291624sequential_4_3291626sequential_4_3291628sequential_4_3291630sequential_4_3291632sequential_4_3291634sequential_4_3291636sequential_4_3291638sequential_4_3291640%^sequential_4/StatefulPartitionedCall* 
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_32907732(
&sequential_4/StatefulPartitionedCall_1�
lambda_4/PartitionedCallPartitionedCall-sequential_4/StatefulPartitionedCall:output:0/sequential_4/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_lambda_4_layer_call_and_return_conditional_losses_32912392
lambda_4/PartitionedCall�
dense_9/StatefulPartitionedCallStatefulPartitionedCall!lambda_4/PartitionedCall:output:0dense_9_3291665dense_9_3291667*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_32911282!
dense_9/StatefulPartitionedCall�
2conv2d_12/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_4_3291602*&
_output_shapes
: *
dtype024
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_12/kernel/Regularizer/SquareSquare:conv2d_12/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_12/kernel/Regularizer/Square�
"conv2d_12/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_12/kernel/Regularizer/Const�
 conv2d_12/kernel/Regularizer/SumSum'conv2d_12/kernel/Regularizer/Square:y:0+conv2d_12/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/Sum�
"conv2d_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_12/kernel/Regularizer/mul/x�
 conv2d_12/kernel/Regularizer/mulMul+conv2d_12/kernel/Regularizer/mul/x:output:0)conv2d_12/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/mul�
2conv2d_13/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_4_3291614*&
_output_shapes
: @*
dtype024
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_13/kernel/Regularizer/SquareSquare:conv2d_13/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_13/kernel/Regularizer/Square�
"conv2d_13/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_13/kernel/Regularizer/Const�
 conv2d_13/kernel/Regularizer/SumSum'conv2d_13/kernel/Regularizer/Square:y:0+conv2d_13/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/Sum�
"conv2d_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_13/kernel/Regularizer/mul/x�
 conv2d_13/kernel/Regularizer/mulMul+conv2d_13/kernel/Regularizer/mul/x:output:0)conv2d_13/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/mul�
2conv2d_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_4_3291626*'
_output_shapes
:@�*
dtype024
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_14/kernel/Regularizer/SquareSquare:conv2d_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�2%
#conv2d_14/kernel/Regularizer/Square�
"conv2d_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_14/kernel/Regularizer/Const�
 conv2d_14/kernel/Regularizer/SumSum'conv2d_14/kernel/Regularizer/Square:y:0+conv2d_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/Sum�
"conv2d_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_14/kernel/Regularizer/mul/x�
 conv2d_14/kernel/Regularizer/mulMul+conv2d_14/kernel/Regularizer/mul/x:output:0)conv2d_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/mul�
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_4_3291638* 
_output_shapes
:
�Q�*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp�
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
�Q�2#
!dense_8/kernel/Regularizer/Square�
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const�
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum�
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2"
 dense_8/kernel/Regularizer/mul/x�
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul�
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_9_3291665*
_output_shapes
:	�*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp�
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2#
!dense_9/kernel/Regularizer/Square�
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const�
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum�
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2"
 dense_9/kernel/Regularizer/mul/x�
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mul�
IdentityIdentity(dense_9/StatefulPartitionedCall:output:03^conv2d_12/kernel/Regularizer/Square/ReadVariableOp3^conv2d_13/kernel/Regularizer/Square/ReadVariableOp3^conv2d_14/kernel/Regularizer/Square/ReadVariableOp1^dense_8/kernel/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall1^dense_9/kernel/Regularizer/Square/ReadVariableOp%^sequential_4/StatefulPartitionedCall'^sequential_4/StatefulPartitionedCall_1*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:���������ii:���������ii: : : : : : : : : : : : : : : : : : : : : : 2h
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2h
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2h
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2P
&sequential_4/StatefulPartitionedCall_1&sequential_4/StatefulPartitionedCall_1:X T
/
_output_shapes
:���������ii
!
_user_specified_name	input_9:YU
/
_output_shapes
:���������ii
"
_user_specified_name
input_10
�
�
)__inference_model_4_layer_call_fn_3291212
input_9
input_10!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:
�Q�

unknown_18:	�

unknown_19:	�

unknown_20:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_9input_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_model_4_layer_call_and_return_conditional_losses_32911652
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:���������ii:���������ii: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������ii
!
_user_specified_name	input_9:YU
/
_output_shapes
:���������ii
"
_user_specified_name
input_10
�w
�
I__inference_sequential_4_layer_call_and_return_conditional_losses_3290333

inputs+
conv2d_12_3290102: 
conv2d_12_3290104: +
batch_normalization_6_3290125: +
batch_normalization_6_3290127: +
batch_normalization_6_3290129: +
batch_normalization_6_3290131: +
conv2d_13_3290166: @
conv2d_13_3290168:@+
batch_normalization_7_3290189:@+
batch_normalization_7_3290191:@+
batch_normalization_7_3290193:@+
batch_normalization_7_3290195:@,
conv2d_14_3290230:@� 
conv2d_14_3290232:	�,
batch_normalization_8_3290253:	�,
batch_normalization_8_3290255:	�,
batch_normalization_8_3290257:	�,
batch_normalization_8_3290259:	�#
dense_8_3290303:
�Q�
dense_8_3290305:	�
identity��-batch_normalization_6/StatefulPartitionedCall�-batch_normalization_7/StatefulPartitionedCall�-batch_normalization_8/StatefulPartitionedCall�!conv2d_12/StatefulPartitionedCall�2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�!conv2d_13/StatefulPartitionedCall�2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�!conv2d_14/StatefulPartitionedCall�2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�dense_8/StatefulPartitionedCall�0dense_8/kernel/Regularizer/Square/ReadVariableOp�
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_12_3290102conv2d_12_3290104*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������ee *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_12_layer_call_and_return_conditional_losses_32901012#
!conv2d_12/StatefulPartitionedCall�
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0batch_normalization_6_3290125batch_normalization_6_3290127batch_normalization_6_3290129batch_normalization_6_3290131*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������ee *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_32901242/
-batch_normalization_6/StatefulPartitionedCall�
activation_12/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������ee * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_activation_12_layer_call_and_return_conditional_losses_32901392
activation_12/PartitionedCall�
 max_pooling2d_12/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������22 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_32897952"
 max_pooling2d_12/PartitionedCall�
dropout_12/PartitionedCallPartitionedCall)max_pooling2d_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������22 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_12_layer_call_and_return_conditional_losses_32901472
dropout_12/PartitionedCall�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall#dropout_12/PartitionedCall:output:0conv2d_13_3290166conv2d_13_3290168*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������..@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_13_layer_call_and_return_conditional_losses_32901652#
!conv2d_13/StatefulPartitionedCall�
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0batch_normalization_7_3290189batch_normalization_7_3290191batch_normalization_7_3290193batch_normalization_7_3290195*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������..@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_32901882/
-batch_normalization_7/StatefulPartitionedCall�
activation_13/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������..@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_activation_13_layer_call_and_return_conditional_losses_32902032
activation_13/PartitionedCall�
 max_pooling2d_13/PartitionedCallPartitionedCall&activation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_32899332"
 max_pooling2d_13/PartitionedCall�
dropout_13/PartitionedCallPartitionedCall)max_pooling2d_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_13_layer_call_and_return_conditional_losses_32902112
dropout_13/PartitionedCall�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall#dropout_13/PartitionedCall:output:0conv2d_14_3290230conv2d_14_3290232*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_14_layer_call_and_return_conditional_losses_32902292#
!conv2d_14/StatefulPartitionedCall�
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0batch_normalization_8_3290253batch_normalization_8_3290255batch_normalization_8_3290257batch_normalization_8_3290259*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_32902522/
-batch_normalization_8/StatefulPartitionedCall�
activation_14/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_activation_14_layer_call_and_return_conditional_losses_32902672
activation_14/PartitionedCall�
 max_pooling2d_14/PartitionedCallPartitionedCall&activation_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_32900712"
 max_pooling2d_14/PartitionedCall�
dropout_14/PartitionedCallPartitionedCall)max_pooling2d_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_14_layer_call_and_return_conditional_losses_32902752
dropout_14/PartitionedCall�
flatten_4/PartitionedCallPartitionedCall#dropout_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������Q* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_32902832
flatten_4/PartitionedCall�
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_3290303dense_8_3290305*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_32903022!
dense_8/StatefulPartitionedCall�
2conv2d_12/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_12_3290102*&
_output_shapes
: *
dtype024
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_12/kernel/Regularizer/SquareSquare:conv2d_12/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_12/kernel/Regularizer/Square�
"conv2d_12/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_12/kernel/Regularizer/Const�
 conv2d_12/kernel/Regularizer/SumSum'conv2d_12/kernel/Regularizer/Square:y:0+conv2d_12/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/Sum�
"conv2d_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_12/kernel/Regularizer/mul/x�
 conv2d_12/kernel/Regularizer/mulMul+conv2d_12/kernel/Regularizer/mul/x:output:0)conv2d_12/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/mul�
2conv2d_13/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_13_3290166*&
_output_shapes
: @*
dtype024
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_13/kernel/Regularizer/SquareSquare:conv2d_13/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_13/kernel/Regularizer/Square�
"conv2d_13/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_13/kernel/Regularizer/Const�
 conv2d_13/kernel/Regularizer/SumSum'conv2d_13/kernel/Regularizer/Square:y:0+conv2d_13/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/Sum�
"conv2d_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_13/kernel/Regularizer/mul/x�
 conv2d_13/kernel/Regularizer/mulMul+conv2d_13/kernel/Regularizer/mul/x:output:0)conv2d_13/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/mul�
2conv2d_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_14_3290230*'
_output_shapes
:@�*
dtype024
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_14/kernel/Regularizer/SquareSquare:conv2d_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�2%
#conv2d_14/kernel/Regularizer/Square�
"conv2d_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_14/kernel/Regularizer/Const�
 conv2d_14/kernel/Regularizer/SumSum'conv2d_14/kernel/Regularizer/Square:y:0+conv2d_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/Sum�
"conv2d_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_14/kernel/Regularizer/mul/x�
 conv2d_14/kernel/Regularizer/mulMul+conv2d_14/kernel/Regularizer/mul/x:output:0)conv2d_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/mul�
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_8_3290303* 
_output_shapes
:
�Q�*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp�
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
�Q�2#
!dense_8/kernel/Regularizer/Square�
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const�
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum�
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2"
 dense_8/kernel/Regularizer/mul/x�
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul�
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall3^conv2d_12/kernel/Regularizer/Square/ReadVariableOp"^conv2d_13/StatefulPartitionedCall3^conv2d_13/kernel/Regularizer/Square/ReadVariableOp"^conv2d_14/StatefulPartitionedCall3^conv2d_14/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall1^dense_8/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������ii: : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2h
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2h
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2h
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������ii
 
_user_specified_nameinputs
�U
�

D__inference_model_4_layer_call_and_return_conditional_losses_3291398

inputs
inputs_1.
sequential_4_3291299: "
sequential_4_3291301: "
sequential_4_3291303: "
sequential_4_3291305: "
sequential_4_3291307: "
sequential_4_3291309: .
sequential_4_3291311: @"
sequential_4_3291313:@"
sequential_4_3291315:@"
sequential_4_3291317:@"
sequential_4_3291319:@"
sequential_4_3291321:@/
sequential_4_3291323:@�#
sequential_4_3291325:	�#
sequential_4_3291327:	�#
sequential_4_3291329:	�#
sequential_4_3291331:	�#
sequential_4_3291333:	�(
sequential_4_3291335:
�Q�#
sequential_4_3291337:	�"
dense_9_3291362:	�
dense_9_3291364:
identity��2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�0dense_8/kernel/Regularizer/Square/ReadVariableOp�dense_9/StatefulPartitionedCall�0dense_9/kernel/Regularizer/Square/ReadVariableOp�$sequential_4/StatefulPartitionedCall�&sequential_4/StatefulPartitionedCall_1�
$sequential_4/StatefulPartitionedCallStatefulPartitionedCallinputssequential_4_3291299sequential_4_3291301sequential_4_3291303sequential_4_3291305sequential_4_3291307sequential_4_3291309sequential_4_3291311sequential_4_3291313sequential_4_3291315sequential_4_3291317sequential_4_3291319sequential_4_3291321sequential_4_3291323sequential_4_3291325sequential_4_3291327sequential_4_3291329sequential_4_3291331sequential_4_3291333sequential_4_3291335sequential_4_3291337* 
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_32907732&
$sequential_4/StatefulPartitionedCall�
&sequential_4/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1sequential_4_3291299sequential_4_3291301sequential_4_3291303sequential_4_3291305sequential_4_3291307sequential_4_3291309sequential_4_3291311sequential_4_3291313sequential_4_3291315sequential_4_3291317sequential_4_3291319sequential_4_3291321sequential_4_3291323sequential_4_3291325sequential_4_3291327sequential_4_3291329sequential_4_3291331sequential_4_3291333sequential_4_3291335sequential_4_3291337%^sequential_4/StatefulPartitionedCall* 
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_32907732(
&sequential_4/StatefulPartitionedCall_1�
lambda_4/PartitionedCallPartitionedCall-sequential_4/StatefulPartitionedCall:output:0/sequential_4/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_lambda_4_layer_call_and_return_conditional_losses_32912392
lambda_4/PartitionedCall�
dense_9/StatefulPartitionedCallStatefulPartitionedCall!lambda_4/PartitionedCall:output:0dense_9_3291362dense_9_3291364*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_32911282!
dense_9/StatefulPartitionedCall�
2conv2d_12/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_4_3291299*&
_output_shapes
: *
dtype024
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_12/kernel/Regularizer/SquareSquare:conv2d_12/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_12/kernel/Regularizer/Square�
"conv2d_12/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_12/kernel/Regularizer/Const�
 conv2d_12/kernel/Regularizer/SumSum'conv2d_12/kernel/Regularizer/Square:y:0+conv2d_12/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/Sum�
"conv2d_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_12/kernel/Regularizer/mul/x�
 conv2d_12/kernel/Regularizer/mulMul+conv2d_12/kernel/Regularizer/mul/x:output:0)conv2d_12/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/mul�
2conv2d_13/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_4_3291311*&
_output_shapes
: @*
dtype024
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_13/kernel/Regularizer/SquareSquare:conv2d_13/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_13/kernel/Regularizer/Square�
"conv2d_13/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_13/kernel/Regularizer/Const�
 conv2d_13/kernel/Regularizer/SumSum'conv2d_13/kernel/Regularizer/Square:y:0+conv2d_13/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/Sum�
"conv2d_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_13/kernel/Regularizer/mul/x�
 conv2d_13/kernel/Regularizer/mulMul+conv2d_13/kernel/Regularizer/mul/x:output:0)conv2d_13/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/mul�
2conv2d_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_4_3291323*'
_output_shapes
:@�*
dtype024
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_14/kernel/Regularizer/SquareSquare:conv2d_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�2%
#conv2d_14/kernel/Regularizer/Square�
"conv2d_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_14/kernel/Regularizer/Const�
 conv2d_14/kernel/Regularizer/SumSum'conv2d_14/kernel/Regularizer/Square:y:0+conv2d_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/Sum�
"conv2d_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_14/kernel/Regularizer/mul/x�
 conv2d_14/kernel/Regularizer/mulMul+conv2d_14/kernel/Regularizer/mul/x:output:0)conv2d_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/mul�
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_4_3291335* 
_output_shapes
:
�Q�*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp�
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
�Q�2#
!dense_8/kernel/Regularizer/Square�
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const�
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum�
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2"
 dense_8/kernel/Regularizer/mul/x�
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul�
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_9_3291362*
_output_shapes
:	�*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp�
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2#
!dense_9/kernel/Regularizer/Square�
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const�
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum�
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2"
 dense_9/kernel/Regularizer/mul/x�
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mul�
IdentityIdentity(dense_9/StatefulPartitionedCall:output:03^conv2d_12/kernel/Regularizer/Square/ReadVariableOp3^conv2d_13/kernel/Regularizer/Square/ReadVariableOp3^conv2d_14/kernel/Regularizer/Square/ReadVariableOp1^dense_8/kernel/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall1^dense_9/kernel/Regularizer/Square/ReadVariableOp%^sequential_4/StatefulPartitionedCall'^sequential_4/StatefulPartitionedCall_1*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:���������ii:���������ii: : : : : : : : : : : : : : : : : : : : : : 2h
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2h
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2h
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2P
&sequential_4/StatefulPartitionedCall_1&sequential_4/StatefulPartitionedCall_1:W S
/
_output_shapes
:���������ii
 
_user_specified_nameinputs:WS
/
_output_shapes
:���������ii
 
_user_specified_nameinputs
�
f
G__inference_dropout_12_layer_call_and_return_conditional_losses_3292894

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������22 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������22 *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������22 2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������22 2
dropout/Cast�
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:���������22 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:���������22 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������22 :W S
/
_output_shapes
:���������22 
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_3289729

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+��������������������������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
7__inference_batch_normalization_8_layer_call_fn_3293238

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_32902522
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
G__inference_dropout_14_layer_call_and_return_conditional_losses_3290275

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:���������		�2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:���������		�2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������		�:X T
0
_output_shapes
:���������		�
 
_user_specified_nameinputs
�
�
D__inference_dense_8_layer_call_and_return_conditional_losses_3290302

inputs2
matmul_readvariableop_resource:
�Q�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�0dense_8/kernel/Regularizer/Square/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�Q�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:����������2	
Sigmoid�
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�Q�*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp�
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
�Q�2#
!dense_8/kernel/Regularizer/Square�
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const�
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum�
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2"
 dense_8/kernel/Regularizer/mul/x�
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul�
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_8/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������Q: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������Q
 
_user_specified_nameinputs
�
f
J__inference_activation_14_layer_call_and_return_conditional_losses_3293256

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:����������2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_3289685

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+��������������������������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
F__inference_conv2d_13_layer_call_and_return_conditional_losses_3292926

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������..@*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������..@2	
BiasAdd�
2conv2d_13/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype024
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_13/kernel/Regularizer/SquareSquare:conv2d_13/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_13/kernel/Regularizer/Square�
"conv2d_13/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_13/kernel/Regularizer/Const�
 conv2d_13/kernel/Regularizer/SumSum'conv2d_13/kernel/Regularizer/Square:y:0+conv2d_13/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/Sum�
"conv2d_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_13/kernel/Regularizer/mul/x�
 conv2d_13/kernel/Regularizer/mulMul+conv2d_13/kernel/Regularizer/mul/x:output:0)conv2d_13/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/mul�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_13/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:���������..@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������22 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2conv2d_13/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������22 
 
_user_specified_nameinputs
�
e
G__inference_dropout_13_layer_call_and_return_conditional_losses_3293074

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:���������@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_3290005

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
b
F__inference_flatten_4_layer_call_and_return_conditional_losses_3290283

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����(  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Q2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������Q2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������		�:X T
0
_output_shapes
:���������		�
 
_user_specified_nameinputs
�
�
7__inference_batch_normalization_7_layer_call_fn_3293046

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������..@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_32901882
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������..@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������..@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������..@
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_3293145

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_14_layer_call_and_return_conditional_losses_3290229

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2	
BiasAdd�
2conv2d_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype024
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_14/kernel/Regularizer/SquareSquare:conv2d_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�2%
#conv2d_14/kernel/Regularizer/Square�
"conv2d_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_14/kernel/Regularizer/Const�
 conv2d_14/kernel/Regularizer/SumSum'conv2d_14/kernel/Regularizer/Square:y:0+conv2d_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/Sum�
"conv2d_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_14/kernel/Regularizer/mul/x�
 conv2d_14/kernel/Regularizer/mulMul+conv2d_14/kernel/Regularizer/mul/x:output:0)conv2d_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/mul�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_14/kernel/Regularizer/Square/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2conv2d_14/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_3290620

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������ee : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������ee 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������ee : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������ee 
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_3289961

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_3292953

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
b
F__inference_flatten_4_layer_call_and_return_conditional_losses_3293294

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����(  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Q2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������Q2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������		�:X T
0
_output_shapes
:���������		�
 
_user_specified_nameinputs
�
�
+__inference_conv2d_13_layer_call_fn_3292935

inputs!
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������..@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_13_layer_call_and_return_conditional_losses_32901652
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������..@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������22 : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������22 
 
_user_specified_nameinputs
�
K
/__inference_activation_14_layer_call_fn_3293261

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_activation_14_layer_call_and_return_conditional_losses_32902672
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
H
,__inference_dropout_12_layer_call_fn_3292899

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������22 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_12_layer_call_and_return_conditional_losses_32901472
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������22 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������22 :W S
/
_output_shapes
:���������22 
 
_user_specified_nameinputs
�
�
F__inference_conv2d_14_layer_call_and_return_conditional_losses_3293118

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2	
BiasAdd�
2conv2d_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype024
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_14/kernel/Regularizer/SquareSquare:conv2d_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�2%
#conv2d_14/kernel/Regularizer/Square�
"conv2d_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_14/kernel/Regularizer/Const�
 conv2d_14/kernel/Regularizer/SumSum'conv2d_14/kernel/Regularizer/Square:y:0+conv2d_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/Sum�
"conv2d_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_14/kernel/Regularizer/mul/x�
 conv2d_14/kernel/Regularizer/mulMul+conv2d_14/kernel/Regularizer/mul/x:output:0)conv2d_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/mul�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_14/kernel/Regularizer/Square/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2conv2d_14/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
+__inference_conv2d_14_layer_call_fn_3293127

inputs"
unknown:@�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_14_layer_call_and_return_conditional_losses_32902292
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
e
G__inference_dropout_13_layer_call_and_return_conditional_losses_3290211

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:���������@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
__inference_loss_fn_0_3292711L
9dense_9_kernel_regularizer_square_readvariableop_resource:	�
identity��0dense_9/kernel/Regularizer/Square/ReadVariableOp�
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9dense_9_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	�*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp�
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2#
!dense_9/kernel/Regularizer/Square�
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const�
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum�
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2"
 dense_9/kernel/Regularizer/mul/x�
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mul�
IdentityIdentity"dense_9/kernel/Regularizer/mul:z:01^dense_9/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp
�
�
7__inference_batch_normalization_6_layer_call_fn_3292841

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_32897292
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+��������������������������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�w
�
I__inference_sequential_4_layer_call_and_return_conditional_losses_3290946
conv2d_12_input+
conv2d_12_3290864: 
conv2d_12_3290866: +
batch_normalization_6_3290869: +
batch_normalization_6_3290871: +
batch_normalization_6_3290873: +
batch_normalization_6_3290875: +
conv2d_13_3290881: @
conv2d_13_3290883:@+
batch_normalization_7_3290886:@+
batch_normalization_7_3290888:@+
batch_normalization_7_3290890:@+
batch_normalization_7_3290892:@,
conv2d_14_3290898:@� 
conv2d_14_3290900:	�,
batch_normalization_8_3290903:	�,
batch_normalization_8_3290905:	�,
batch_normalization_8_3290907:	�,
batch_normalization_8_3290909:	�#
dense_8_3290916:
�Q�
dense_8_3290918:	�
identity��-batch_normalization_6/StatefulPartitionedCall�-batch_normalization_7/StatefulPartitionedCall�-batch_normalization_8/StatefulPartitionedCall�!conv2d_12/StatefulPartitionedCall�2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�!conv2d_13/StatefulPartitionedCall�2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�!conv2d_14/StatefulPartitionedCall�2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�dense_8/StatefulPartitionedCall�0dense_8/kernel/Regularizer/Square/ReadVariableOp�
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCallconv2d_12_inputconv2d_12_3290864conv2d_12_3290866*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������ee *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_12_layer_call_and_return_conditional_losses_32901012#
!conv2d_12/StatefulPartitionedCall�
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0batch_normalization_6_3290869batch_normalization_6_3290871batch_normalization_6_3290873batch_normalization_6_3290875*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������ee *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_32901242/
-batch_normalization_6/StatefulPartitionedCall�
activation_12/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������ee * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_activation_12_layer_call_and_return_conditional_losses_32901392
activation_12/PartitionedCall�
 max_pooling2d_12/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������22 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_32897952"
 max_pooling2d_12/PartitionedCall�
dropout_12/PartitionedCallPartitionedCall)max_pooling2d_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������22 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_12_layer_call_and_return_conditional_losses_32901472
dropout_12/PartitionedCall�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall#dropout_12/PartitionedCall:output:0conv2d_13_3290881conv2d_13_3290883*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������..@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_13_layer_call_and_return_conditional_losses_32901652#
!conv2d_13/StatefulPartitionedCall�
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0batch_normalization_7_3290886batch_normalization_7_3290888batch_normalization_7_3290890batch_normalization_7_3290892*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������..@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_32901882/
-batch_normalization_7/StatefulPartitionedCall�
activation_13/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������..@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_activation_13_layer_call_and_return_conditional_losses_32902032
activation_13/PartitionedCall�
 max_pooling2d_13/PartitionedCallPartitionedCall&activation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_32899332"
 max_pooling2d_13/PartitionedCall�
dropout_13/PartitionedCallPartitionedCall)max_pooling2d_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_13_layer_call_and_return_conditional_losses_32902112
dropout_13/PartitionedCall�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall#dropout_13/PartitionedCall:output:0conv2d_14_3290898conv2d_14_3290900*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_14_layer_call_and_return_conditional_losses_32902292#
!conv2d_14/StatefulPartitionedCall�
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0batch_normalization_8_3290903batch_normalization_8_3290905batch_normalization_8_3290907batch_normalization_8_3290909*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_32902522/
-batch_normalization_8/StatefulPartitionedCall�
activation_14/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_activation_14_layer_call_and_return_conditional_losses_32902672
activation_14/PartitionedCall�
 max_pooling2d_14/PartitionedCallPartitionedCall&activation_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_32900712"
 max_pooling2d_14/PartitionedCall�
dropout_14/PartitionedCallPartitionedCall)max_pooling2d_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_14_layer_call_and_return_conditional_losses_32902752
dropout_14/PartitionedCall�
flatten_4/PartitionedCallPartitionedCall#dropout_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������Q* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_32902832
flatten_4/PartitionedCall�
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_3290916dense_8_3290918*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_32903022!
dense_8/StatefulPartitionedCall�
2conv2d_12/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_12_3290864*&
_output_shapes
: *
dtype024
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_12/kernel/Regularizer/SquareSquare:conv2d_12/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_12/kernel/Regularizer/Square�
"conv2d_12/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_12/kernel/Regularizer/Const�
 conv2d_12/kernel/Regularizer/SumSum'conv2d_12/kernel/Regularizer/Square:y:0+conv2d_12/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/Sum�
"conv2d_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_12/kernel/Regularizer/mul/x�
 conv2d_12/kernel/Regularizer/mulMul+conv2d_12/kernel/Regularizer/mul/x:output:0)conv2d_12/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/mul�
2conv2d_13/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_13_3290881*&
_output_shapes
: @*
dtype024
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_13/kernel/Regularizer/SquareSquare:conv2d_13/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_13/kernel/Regularizer/Square�
"conv2d_13/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_13/kernel/Regularizer/Const�
 conv2d_13/kernel/Regularizer/SumSum'conv2d_13/kernel/Regularizer/Square:y:0+conv2d_13/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/Sum�
"conv2d_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_13/kernel/Regularizer/mul/x�
 conv2d_13/kernel/Regularizer/mulMul+conv2d_13/kernel/Regularizer/mul/x:output:0)conv2d_13/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/mul�
2conv2d_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_14_3290898*'
_output_shapes
:@�*
dtype024
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_14/kernel/Regularizer/SquareSquare:conv2d_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�2%
#conv2d_14/kernel/Regularizer/Square�
"conv2d_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_14/kernel/Regularizer/Const�
 conv2d_14/kernel/Regularizer/SumSum'conv2d_14/kernel/Regularizer/Square:y:0+conv2d_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/Sum�
"conv2d_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_14/kernel/Regularizer/mul/x�
 conv2d_14/kernel/Regularizer/mulMul+conv2d_14/kernel/Regularizer/mul/x:output:0)conv2d_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/mul�
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_8_3290916* 
_output_shapes
:
�Q�*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp�
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
�Q�2#
!dense_8/kernel/Regularizer/Square�
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const�
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum�
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2"
 dense_8/kernel/Regularizer/mul/x�
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul�
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall3^conv2d_12/kernel/Regularizer/Square/ReadVariableOp"^conv2d_13/StatefulPartitionedCall3^conv2d_13/kernel/Regularizer/Square/ReadVariableOp"^conv2d_14/StatefulPartitionedCall3^conv2d_14/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall1^dense_8/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������ii: : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2h
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2h
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2h
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp:` \
/
_output_shapes
:���������ii
)
_user_specified_nameconv2d_12_input
�{
�
I__inference_sequential_4_layer_call_and_return_conditional_losses_3290773

inputs+
conv2d_12_3290691: 
conv2d_12_3290693: +
batch_normalization_6_3290696: +
batch_normalization_6_3290698: +
batch_normalization_6_3290700: +
batch_normalization_6_3290702: +
conv2d_13_3290708: @
conv2d_13_3290710:@+
batch_normalization_7_3290713:@+
batch_normalization_7_3290715:@+
batch_normalization_7_3290717:@+
batch_normalization_7_3290719:@,
conv2d_14_3290725:@� 
conv2d_14_3290727:	�,
batch_normalization_8_3290730:	�,
batch_normalization_8_3290732:	�,
batch_normalization_8_3290734:	�,
batch_normalization_8_3290736:	�#
dense_8_3290743:
�Q�
dense_8_3290745:	�
identity��-batch_normalization_6/StatefulPartitionedCall�-batch_normalization_7/StatefulPartitionedCall�-batch_normalization_8/StatefulPartitionedCall�!conv2d_12/StatefulPartitionedCall�2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�!conv2d_13/StatefulPartitionedCall�2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�!conv2d_14/StatefulPartitionedCall�2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�dense_8/StatefulPartitionedCall�0dense_8/kernel/Regularizer/Square/ReadVariableOp�"dropout_12/StatefulPartitionedCall�"dropout_13/StatefulPartitionedCall�"dropout_14/StatefulPartitionedCall�
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_12_3290691conv2d_12_3290693*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������ee *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_12_layer_call_and_return_conditional_losses_32901012#
!conv2d_12/StatefulPartitionedCall�
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0batch_normalization_6_3290696batch_normalization_6_3290698batch_normalization_6_3290700batch_normalization_6_3290702*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������ee *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_32906202/
-batch_normalization_6/StatefulPartitionedCall�
activation_12/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������ee * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_activation_12_layer_call_and_return_conditional_losses_32901392
activation_12/PartitionedCall�
 max_pooling2d_12/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������22 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_32897952"
 max_pooling2d_12/PartitionedCall�
"dropout_12/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������22 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_12_layer_call_and_return_conditional_losses_32905782$
"dropout_12/StatefulPartitionedCall�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall+dropout_12/StatefulPartitionedCall:output:0conv2d_13_3290708conv2d_13_3290710*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������..@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_13_layer_call_and_return_conditional_losses_32901652#
!conv2d_13/StatefulPartitionedCall�
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0batch_normalization_7_3290713batch_normalization_7_3290715batch_normalization_7_3290717batch_normalization_7_3290719*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������..@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_32905372/
-batch_normalization_7/StatefulPartitionedCall�
activation_13/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������..@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_activation_13_layer_call_and_return_conditional_losses_32902032
activation_13/PartitionedCall�
 max_pooling2d_13/PartitionedCallPartitionedCall&activation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_32899332"
 max_pooling2d_13/PartitionedCall�
"dropout_13/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0#^dropout_12/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_13_layer_call_and_return_conditional_losses_32904952$
"dropout_13/StatefulPartitionedCall�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall+dropout_13/StatefulPartitionedCall:output:0conv2d_14_3290725conv2d_14_3290727*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_14_layer_call_and_return_conditional_losses_32902292#
!conv2d_14/StatefulPartitionedCall�
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0batch_normalization_8_3290730batch_normalization_8_3290732batch_normalization_8_3290734batch_normalization_8_3290736*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_32904542/
-batch_normalization_8/StatefulPartitionedCall�
activation_14/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_activation_14_layer_call_and_return_conditional_losses_32902672
activation_14/PartitionedCall�
 max_pooling2d_14/PartitionedCallPartitionedCall&activation_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_32900712"
 max_pooling2d_14/PartitionedCall�
"dropout_14/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0#^dropout_13/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_14_layer_call_and_return_conditional_losses_32904122$
"dropout_14/StatefulPartitionedCall�
flatten_4/PartitionedCallPartitionedCall+dropout_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������Q* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_32902832
flatten_4/PartitionedCall�
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_3290743dense_8_3290745*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_32903022!
dense_8/StatefulPartitionedCall�
2conv2d_12/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_12_3290691*&
_output_shapes
: *
dtype024
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_12/kernel/Regularizer/SquareSquare:conv2d_12/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_12/kernel/Regularizer/Square�
"conv2d_12/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_12/kernel/Regularizer/Const�
 conv2d_12/kernel/Regularizer/SumSum'conv2d_12/kernel/Regularizer/Square:y:0+conv2d_12/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/Sum�
"conv2d_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_12/kernel/Regularizer/mul/x�
 conv2d_12/kernel/Regularizer/mulMul+conv2d_12/kernel/Regularizer/mul/x:output:0)conv2d_12/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/mul�
2conv2d_13/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_13_3290708*&
_output_shapes
: @*
dtype024
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_13/kernel/Regularizer/SquareSquare:conv2d_13/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_13/kernel/Regularizer/Square�
"conv2d_13/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_13/kernel/Regularizer/Const�
 conv2d_13/kernel/Regularizer/SumSum'conv2d_13/kernel/Regularizer/Square:y:0+conv2d_13/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/Sum�
"conv2d_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_13/kernel/Regularizer/mul/x�
 conv2d_13/kernel/Regularizer/mulMul+conv2d_13/kernel/Regularizer/mul/x:output:0)conv2d_13/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/mul�
2conv2d_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_14_3290725*'
_output_shapes
:@�*
dtype024
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_14/kernel/Regularizer/SquareSquare:conv2d_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�2%
#conv2d_14/kernel/Regularizer/Square�
"conv2d_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_14/kernel/Regularizer/Const�
 conv2d_14/kernel/Regularizer/SumSum'conv2d_14/kernel/Regularizer/Square:y:0+conv2d_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/Sum�
"conv2d_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_14/kernel/Regularizer/mul/x�
 conv2d_14/kernel/Regularizer/mulMul+conv2d_14/kernel/Regularizer/mul/x:output:0)conv2d_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/mul�
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_8_3290743* 
_output_shapes
:
�Q�*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp�
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
�Q�2#
!dense_8/kernel/Regularizer/Square�
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const�
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum�
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2"
 dense_8/kernel/Regularizer/mul/x�
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul�
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall3^conv2d_12/kernel/Regularizer/Square/ReadVariableOp"^conv2d_13/StatefulPartitionedCall3^conv2d_13/kernel/Regularizer/Square/ReadVariableOp"^conv2d_14/StatefulPartitionedCall3^conv2d_14/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall1^dense_8/kernel/Regularizer/Square/ReadVariableOp#^dropout_12/StatefulPartitionedCall#^dropout_13/StatefulPartitionedCall#^dropout_14/StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������ii: : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2h
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2h
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2h
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp2H
"dropout_12/StatefulPartitionedCall"dropout_12/StatefulPartitionedCall2H
"dropout_13/StatefulPartitionedCall"dropout_13/StatefulPartitionedCall2H
"dropout_14/StatefulPartitionedCall"dropout_14/StatefulPartitionedCall:W S
/
_output_shapes
:���������ii
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_3292761

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+��������������������������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
e
,__inference_dropout_12_layer_call_fn_3292904

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������22 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_12_layer_call_and_return_conditional_losses_32905782
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������22 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������22 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������22 
 
_user_specified_nameinputs
�
�
F__inference_conv2d_12_layer_call_and_return_conditional_losses_3290101

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������ee *
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������ee 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������ee 2
Relu�
2conv2d_12/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype024
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_12/kernel/Regularizer/SquareSquare:conv2d_12/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_12/kernel/Regularizer/Square�
"conv2d_12/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_12/kernel/Regularizer/Const�
 conv2d_12/kernel/Regularizer/SumSum'conv2d_12/kernel/Regularizer/Square:y:0+conv2d_12/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/Sum�
"conv2d_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_12/kernel/Regularizer/mul/x�
 conv2d_12/kernel/Regularizer/mulMul+conv2d_12/kernel/Regularizer/mul/x:output:0)conv2d_12/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/mul�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_12/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:���������ee 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������ii: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2conv2d_12/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������ii
 
_user_specified_nameinputs
�
N
2__inference_max_pooling2d_14_layer_call_fn_3290077

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_32900712
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
N
2__inference_max_pooling2d_13_layer_call_fn_3289939

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_32899332
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
G
+__inference_flatten_4_layer_call_fn_3293299

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������Q* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_32902832
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������Q2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������		�:X T
0
_output_shapes
:���������		�
 
_user_specified_nameinputs
�
f
G__inference_dropout_13_layer_call_and_return_conditional_losses_3293086

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������@2
dropout/Cast�
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:���������@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_3290537

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������..@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������..@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������..@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������..@
 
_user_specified_nameinputs
�
�
D__inference_dense_8_layer_call_and_return_conditional_losses_3293322

inputs2
matmul_readvariableop_resource:
�Q�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�0dense_8/kernel/Regularizer/Square/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�Q�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:����������2	
Sigmoid�
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�Q�*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp�
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
�Q�2#
!dense_8/kernel/Regularizer/Square�
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const�
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum�
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2"
 dense_8/kernel/Regularizer/mul/x�
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul�
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_8/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������Q: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������Q
 
_user_specified_nameinputs
�
f
J__inference_activation_12_layer_call_and_return_conditional_losses_3292872

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:���������ee 2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������ee 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������ee :W S
/
_output_shapes
:���������ee 
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_3289823

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_3290124

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������ee : : : : :*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������ee 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������ee : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������ee 
 
_user_specified_nameinputs
�
H
,__inference_dropout_13_layer_call_fn_3293091

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_13_layer_call_and_return_conditional_losses_32902112
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
q
E__inference_lambda_4_layer_call_and_return_conditional_losses_3292656
inputs_0
inputs_1
identityX
subSubinputs_0inputs_1*
T0*(
_output_shapes
:����������2
subM
AbsAbssub:z:0*
T0*(
_output_shapes
:����������2
Abs\
IdentityIdentityAbs:y:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
f
J__inference_activation_12_layer_call_and_return_conditional_losses_3290139

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:���������ee 2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������ee 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������ee :W S
/
_output_shapes
:���������ee 
 
_user_specified_nameinputs
�y
�
 __inference__traced_save_3293585
file_prefix-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop/
+savev2_conv2d_12_kernel_read_readvariableop-
)savev2_conv2d_12_bias_read_readvariableop:
6savev2_batch_normalization_6_gamma_read_readvariableop9
5savev2_batch_normalization_6_beta_read_readvariableop@
<savev2_batch_normalization_6_moving_mean_read_readvariableopD
@savev2_batch_normalization_6_moving_variance_read_readvariableop/
+savev2_conv2d_13_kernel_read_readvariableop-
)savev2_conv2d_13_bias_read_readvariableop:
6savev2_batch_normalization_7_gamma_read_readvariableop9
5savev2_batch_normalization_7_beta_read_readvariableop@
<savev2_batch_normalization_7_moving_mean_read_readvariableopD
@savev2_batch_normalization_7_moving_variance_read_readvariableop/
+savev2_conv2d_14_kernel_read_readvariableop-
)savev2_conv2d_14_bias_read_readvariableop:
6savev2_batch_normalization_8_gamma_read_readvariableop9
5savev2_batch_normalization_8_beta_read_readvariableop@
<savev2_batch_normalization_8_moving_mean_read_readvariableopD
@savev2_batch_normalization_8_moving_variance_read_readvariableop-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop4
0savev2_adam_dense_9_kernel_m_read_readvariableop2
.savev2_adam_dense_9_bias_m_read_readvariableop6
2savev2_adam_conv2d_12_kernel_m_read_readvariableop4
0savev2_adam_conv2d_12_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_6_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_6_beta_m_read_readvariableop6
2savev2_adam_conv2d_13_kernel_m_read_readvariableop4
0savev2_adam_conv2d_13_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_7_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_7_beta_m_read_readvariableop6
2savev2_adam_conv2d_14_kernel_m_read_readvariableop4
0savev2_adam_conv2d_14_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_8_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_8_beta_m_read_readvariableop4
0savev2_adam_dense_8_kernel_m_read_readvariableop2
.savev2_adam_dense_8_bias_m_read_readvariableop4
0savev2_adam_dense_9_kernel_v_read_readvariableop2
.savev2_adam_dense_9_bias_v_read_readvariableop6
2savev2_adam_conv2d_12_kernel_v_read_readvariableop4
0savev2_adam_conv2d_12_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_6_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_6_beta_v_read_readvariableop6
2savev2_adam_conv2d_13_kernel_v_read_readvariableop4
0savev2_adam_conv2d_13_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_7_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_7_beta_v_read_readvariableop6
2savev2_adam_conv2d_14_kernel_v_read_readvariableop4
0savev2_adam_conv2d_14_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_8_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_8_beta_v_read_readvariableop4
0savev2_adam_dense_8_kernel_v_read_readvariableop2
.savev2_adam_dense_8_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
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
Const_1�
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
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:?*
dtype0*�
value�B�?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:?*
dtype0*�
value�B�?B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop+savev2_conv2d_12_kernel_read_readvariableop)savev2_conv2d_12_bias_read_readvariableop6savev2_batch_normalization_6_gamma_read_readvariableop5savev2_batch_normalization_6_beta_read_readvariableop<savev2_batch_normalization_6_moving_mean_read_readvariableop@savev2_batch_normalization_6_moving_variance_read_readvariableop+savev2_conv2d_13_kernel_read_readvariableop)savev2_conv2d_13_bias_read_readvariableop6savev2_batch_normalization_7_gamma_read_readvariableop5savev2_batch_normalization_7_beta_read_readvariableop<savev2_batch_normalization_7_moving_mean_read_readvariableop@savev2_batch_normalization_7_moving_variance_read_readvariableop+savev2_conv2d_14_kernel_read_readvariableop)savev2_conv2d_14_bias_read_readvariableop6savev2_batch_normalization_8_gamma_read_readvariableop5savev2_batch_normalization_8_beta_read_readvariableop<savev2_batch_normalization_8_moving_mean_read_readvariableop@savev2_batch_normalization_8_moving_variance_read_readvariableop)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop0savev2_adam_dense_9_kernel_m_read_readvariableop.savev2_adam_dense_9_bias_m_read_readvariableop2savev2_adam_conv2d_12_kernel_m_read_readvariableop0savev2_adam_conv2d_12_bias_m_read_readvariableop=savev2_adam_batch_normalization_6_gamma_m_read_readvariableop<savev2_adam_batch_normalization_6_beta_m_read_readvariableop2savev2_adam_conv2d_13_kernel_m_read_readvariableop0savev2_adam_conv2d_13_bias_m_read_readvariableop=savev2_adam_batch_normalization_7_gamma_m_read_readvariableop<savev2_adam_batch_normalization_7_beta_m_read_readvariableop2savev2_adam_conv2d_14_kernel_m_read_readvariableop0savev2_adam_conv2d_14_bias_m_read_readvariableop=savev2_adam_batch_normalization_8_gamma_m_read_readvariableop<savev2_adam_batch_normalization_8_beta_m_read_readvariableop0savev2_adam_dense_8_kernel_m_read_readvariableop.savev2_adam_dense_8_bias_m_read_readvariableop0savev2_adam_dense_9_kernel_v_read_readvariableop.savev2_adam_dense_9_bias_v_read_readvariableop2savev2_adam_conv2d_12_kernel_v_read_readvariableop0savev2_adam_conv2d_12_bias_v_read_readvariableop=savev2_adam_batch_normalization_6_gamma_v_read_readvariableop<savev2_adam_batch_normalization_6_beta_v_read_readvariableop2savev2_adam_conv2d_13_kernel_v_read_readvariableop0savev2_adam_conv2d_13_bias_v_read_readvariableop=savev2_adam_batch_normalization_7_gamma_v_read_readvariableop<savev2_adam_batch_normalization_7_beta_v_read_readvariableop2savev2_adam_conv2d_14_kernel_v_read_readvariableop0savev2_adam_conv2d_14_bias_v_read_readvariableop=savev2_adam_batch_normalization_8_gamma_v_read_readvariableop<savev2_adam_batch_normalization_8_beta_v_read_readvariableop0savev2_adam_dense_8_kernel_v_read_readvariableop.savev2_adam_dense_8_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *M
dtypesC
A2?	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :	�:: : : : : : : : : : : @:@:@:@:@:@:@�:�:�:�:�:�:
�Q�:�: : : : :	�:: : : : : @:@:@:@:@�:�:�:�:
�Q�:�:	�:: : : : : @:@:@:@:@�:�:�:�:
�Q�:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: : 	

_output_shapes
: : 


_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:&"
 
_output_shapes
:
�Q�:!

_output_shapes	
:�:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:  

_output_shapes
::,!(
&
_output_shapes
: : "

_output_shapes
: : #

_output_shapes
: : $

_output_shapes
: :,%(
&
_output_shapes
: @: &

_output_shapes
:@: '

_output_shapes
:@: (

_output_shapes
:@:-))
'
_output_shapes
:@�:!*

_output_shapes	
:�:!+

_output_shapes	
:�:!,

_output_shapes	
:�:&-"
 
_output_shapes
:
�Q�:!.

_output_shapes	
:�:%/!

_output_shapes
:	�: 0

_output_shapes
::,1(
&
_output_shapes
: : 2

_output_shapes
: : 3

_output_shapes
: : 4

_output_shapes
: :,5(
&
_output_shapes
: @: 6

_output_shapes
:@: 7

_output_shapes
:@: 8

_output_shapes
:@:-9)
'
_output_shapes
:@�:!:

_output_shapes	
:�:!;

_output_shapes	
:�:!<

_output_shapes	
:�:&="
 
_output_shapes
:
�Q�:!>

_output_shapes	
:�:?

_output_shapes
: 
�
�
7__inference_batch_normalization_8_layer_call_fn_3293225

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_32900052
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
7__inference_batch_normalization_8_layer_call_fn_3293251

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_32904542
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_dense_9_layer_call_fn_3292700

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_32911282
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_3293163

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
D__inference_dense_9_layer_call_and_return_conditional_losses_3292691

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�0dense_9/kernel/Regularizer/Square/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������2	
Sigmoid�
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp�
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2#
!dense_9/kernel/Regularizer/Square�
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const�
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum�
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2"
 dense_9/kernel/Regularizer/mul/x�
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mul�
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_9/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_3290454

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
.__inference_sequential_4_layer_call_fn_3290376
conv2d_12_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:
�Q�

unknown_18:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
 *(
_output_shapes
:����������*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_32903332
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������ii: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������ii
)
_user_specified_nameconv2d_12_input
��
�'
D__inference_model_4_layer_call_and_return_conditional_losses_3292193
inputs_0
inputs_1O
5sequential_4_conv2d_12_conv2d_readvariableop_resource: D
6sequential_4_conv2d_12_biasadd_readvariableop_resource: H
:sequential_4_batch_normalization_6_readvariableop_resource: J
<sequential_4_batch_normalization_6_readvariableop_1_resource: Y
Ksequential_4_batch_normalization_6_fusedbatchnormv3_readvariableop_resource: [
Msequential_4_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource: O
5sequential_4_conv2d_13_conv2d_readvariableop_resource: @D
6sequential_4_conv2d_13_biasadd_readvariableop_resource:@H
:sequential_4_batch_normalization_7_readvariableop_resource:@J
<sequential_4_batch_normalization_7_readvariableop_1_resource:@Y
Ksequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_resource:@[
Msequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:@P
5sequential_4_conv2d_14_conv2d_readvariableop_resource:@�E
6sequential_4_conv2d_14_biasadd_readvariableop_resource:	�I
:sequential_4_batch_normalization_8_readvariableop_resource:	�K
<sequential_4_batch_normalization_8_readvariableop_1_resource:	�Z
Ksequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_resource:	�\
Msequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource:	�G
3sequential_4_dense_8_matmul_readvariableop_resource:
�Q�C
4sequential_4_dense_8_biasadd_readvariableop_resource:	�9
&dense_9_matmul_readvariableop_resource:	�5
'dense_9_biasadd_readvariableop_resource:
identity��2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�0dense_8/kernel/Regularizer/Square/ReadVariableOp�dense_9/BiasAdd/ReadVariableOp�dense_9/MatMul/ReadVariableOp�0dense_9/kernel/Regularizer/Square/ReadVariableOp�1sequential_4/batch_normalization_6/AssignNewValue�3sequential_4/batch_normalization_6/AssignNewValue_1�3sequential_4/batch_normalization_6/AssignNewValue_2�3sequential_4/batch_normalization_6/AssignNewValue_3�Bsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp�Dsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1�Dsequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp�Fsequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp_1�1sequential_4/batch_normalization_6/ReadVariableOp�3sequential_4/batch_normalization_6/ReadVariableOp_1�3sequential_4/batch_normalization_6/ReadVariableOp_2�3sequential_4/batch_normalization_6/ReadVariableOp_3�1sequential_4/batch_normalization_7/AssignNewValue�3sequential_4/batch_normalization_7/AssignNewValue_1�3sequential_4/batch_normalization_7/AssignNewValue_2�3sequential_4/batch_normalization_7/AssignNewValue_3�Bsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp�Dsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1�Dsequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp�Fsequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp_1�1sequential_4/batch_normalization_7/ReadVariableOp�3sequential_4/batch_normalization_7/ReadVariableOp_1�3sequential_4/batch_normalization_7/ReadVariableOp_2�3sequential_4/batch_normalization_7/ReadVariableOp_3�1sequential_4/batch_normalization_8/AssignNewValue�3sequential_4/batch_normalization_8/AssignNewValue_1�3sequential_4/batch_normalization_8/AssignNewValue_2�3sequential_4/batch_normalization_8/AssignNewValue_3�Bsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp�Dsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1�Dsequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp�Fsequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp_1�1sequential_4/batch_normalization_8/ReadVariableOp�3sequential_4/batch_normalization_8/ReadVariableOp_1�3sequential_4/batch_normalization_8/ReadVariableOp_2�3sequential_4/batch_normalization_8/ReadVariableOp_3�-sequential_4/conv2d_12/BiasAdd/ReadVariableOp�/sequential_4/conv2d_12/BiasAdd_1/ReadVariableOp�,sequential_4/conv2d_12/Conv2D/ReadVariableOp�.sequential_4/conv2d_12/Conv2D_1/ReadVariableOp�-sequential_4/conv2d_13/BiasAdd/ReadVariableOp�/sequential_4/conv2d_13/BiasAdd_1/ReadVariableOp�,sequential_4/conv2d_13/Conv2D/ReadVariableOp�.sequential_4/conv2d_13/Conv2D_1/ReadVariableOp�-sequential_4/conv2d_14/BiasAdd/ReadVariableOp�/sequential_4/conv2d_14/BiasAdd_1/ReadVariableOp�,sequential_4/conv2d_14/Conv2D/ReadVariableOp�.sequential_4/conv2d_14/Conv2D_1/ReadVariableOp�+sequential_4/dense_8/BiasAdd/ReadVariableOp�-sequential_4/dense_8/BiasAdd_1/ReadVariableOp�*sequential_4/dense_8/MatMul/ReadVariableOp�,sequential_4/dense_8/MatMul_1/ReadVariableOp�
,sequential_4/conv2d_12/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02.
,sequential_4/conv2d_12/Conv2D/ReadVariableOp�
sequential_4/conv2d_12/Conv2DConv2Dinputs_04sequential_4/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������ee *
paddingVALID*
strides
2
sequential_4/conv2d_12/Conv2D�
-sequential_4/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_4/conv2d_12/BiasAdd/ReadVariableOp�
sequential_4/conv2d_12/BiasAddBiasAdd&sequential_4/conv2d_12/Conv2D:output:05sequential_4/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������ee 2 
sequential_4/conv2d_12/BiasAdd�
sequential_4/conv2d_12/ReluRelu'sequential_4/conv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:���������ee 2
sequential_4/conv2d_12/Relu�
1sequential_4/batch_normalization_6/ReadVariableOpReadVariableOp:sequential_4_batch_normalization_6_readvariableop_resource*
_output_shapes
: *
dtype023
1sequential_4/batch_normalization_6/ReadVariableOp�
3sequential_4/batch_normalization_6/ReadVariableOp_1ReadVariableOp<sequential_4_batch_normalization_6_readvariableop_1_resource*
_output_shapes
: *
dtype025
3sequential_4/batch_normalization_6/ReadVariableOp_1�
Bsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_4_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02D
Bsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp�
Dsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_4_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02F
Dsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1�
3sequential_4/batch_normalization_6/FusedBatchNormV3FusedBatchNormV3)sequential_4/conv2d_12/Relu:activations:09sequential_4/batch_normalization_6/ReadVariableOp:value:0;sequential_4/batch_normalization_6/ReadVariableOp_1:value:0Jsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������ee : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<25
3sequential_4/batch_normalization_6/FusedBatchNormV3�
1sequential_4/batch_normalization_6/AssignNewValueAssignVariableOpKsequential_4_batch_normalization_6_fusedbatchnormv3_readvariableop_resource@sequential_4/batch_normalization_6/FusedBatchNormV3:batch_mean:0C^sequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype023
1sequential_4/batch_normalization_6/AssignNewValue�
3sequential_4/batch_normalization_6/AssignNewValue_1AssignVariableOpMsequential_4_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resourceDsequential_4/batch_normalization_6/FusedBatchNormV3:batch_variance:0E^sequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype025
3sequential_4/batch_normalization_6/AssignNewValue_1�
sequential_4/activation_12/ReluRelu7sequential_4/batch_normalization_6/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������ee 2!
sequential_4/activation_12/Relu�
%sequential_4/max_pooling2d_12/MaxPoolMaxPool-sequential_4/activation_12/Relu:activations:0*/
_output_shapes
:���������22 *
ksize
*
paddingVALID*
strides
2'
%sequential_4/max_pooling2d_12/MaxPool�
%sequential_4/dropout_12/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2'
%sequential_4/dropout_12/dropout/Const�
#sequential_4/dropout_12/dropout/MulMul.sequential_4/max_pooling2d_12/MaxPool:output:0.sequential_4/dropout_12/dropout/Const:output:0*
T0*/
_output_shapes
:���������22 2%
#sequential_4/dropout_12/dropout/Mul�
%sequential_4/dropout_12/dropout/ShapeShape.sequential_4/max_pooling2d_12/MaxPool:output:0*
T0*
_output_shapes
:2'
%sequential_4/dropout_12/dropout/Shape�
<sequential_4/dropout_12/dropout/random_uniform/RandomUniformRandomUniform.sequential_4/dropout_12/dropout/Shape:output:0*
T0*/
_output_shapes
:���������22 *
dtype02>
<sequential_4/dropout_12/dropout/random_uniform/RandomUniform�
.sequential_4/dropout_12/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>20
.sequential_4/dropout_12/dropout/GreaterEqual/y�
,sequential_4/dropout_12/dropout/GreaterEqualGreaterEqualEsequential_4/dropout_12/dropout/random_uniform/RandomUniform:output:07sequential_4/dropout_12/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������22 2.
,sequential_4/dropout_12/dropout/GreaterEqual�
$sequential_4/dropout_12/dropout/CastCast0sequential_4/dropout_12/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������22 2&
$sequential_4/dropout_12/dropout/Cast�
%sequential_4/dropout_12/dropout/Mul_1Mul'sequential_4/dropout_12/dropout/Mul:z:0(sequential_4/dropout_12/dropout/Cast:y:0*
T0*/
_output_shapes
:���������22 2'
%sequential_4/dropout_12/dropout/Mul_1�
,sequential_4/conv2d_13/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02.
,sequential_4/conv2d_13/Conv2D/ReadVariableOp�
sequential_4/conv2d_13/Conv2DConv2D)sequential_4/dropout_12/dropout/Mul_1:z:04sequential_4/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������..@*
paddingVALID*
strides
2
sequential_4/conv2d_13/Conv2D�
-sequential_4/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_4/conv2d_13/BiasAdd/ReadVariableOp�
sequential_4/conv2d_13/BiasAddBiasAdd&sequential_4/conv2d_13/Conv2D:output:05sequential_4/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������..@2 
sequential_4/conv2d_13/BiasAdd�
1sequential_4/batch_normalization_7/ReadVariableOpReadVariableOp:sequential_4_batch_normalization_7_readvariableop_resource*
_output_shapes
:@*
dtype023
1sequential_4/batch_normalization_7/ReadVariableOp�
3sequential_4/batch_normalization_7/ReadVariableOp_1ReadVariableOp<sequential_4_batch_normalization_7_readvariableop_1_resource*
_output_shapes
:@*
dtype025
3sequential_4/batch_normalization_7/ReadVariableOp_1�
Bsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02D
Bsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp�
Dsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02F
Dsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1�
3sequential_4/batch_normalization_7/FusedBatchNormV3FusedBatchNormV3'sequential_4/conv2d_13/BiasAdd:output:09sequential_4/batch_normalization_7/ReadVariableOp:value:0;sequential_4/batch_normalization_7/ReadVariableOp_1:value:0Jsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������..@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<25
3sequential_4/batch_normalization_7/FusedBatchNormV3�
1sequential_4/batch_normalization_7/AssignNewValueAssignVariableOpKsequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_resource@sequential_4/batch_normalization_7/FusedBatchNormV3:batch_mean:0C^sequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype023
1sequential_4/batch_normalization_7/AssignNewValue�
3sequential_4/batch_normalization_7/AssignNewValue_1AssignVariableOpMsequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resourceDsequential_4/batch_normalization_7/FusedBatchNormV3:batch_variance:0E^sequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype025
3sequential_4/batch_normalization_7/AssignNewValue_1�
sequential_4/activation_13/ReluRelu7sequential_4/batch_normalization_7/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������..@2!
sequential_4/activation_13/Relu�
%sequential_4/max_pooling2d_13/MaxPoolMaxPool-sequential_4/activation_13/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
2'
%sequential_4/max_pooling2d_13/MaxPool�
%sequential_4/dropout_13/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2'
%sequential_4/dropout_13/dropout/Const�
#sequential_4/dropout_13/dropout/MulMul.sequential_4/max_pooling2d_13/MaxPool:output:0.sequential_4/dropout_13/dropout/Const:output:0*
T0*/
_output_shapes
:���������@2%
#sequential_4/dropout_13/dropout/Mul�
%sequential_4/dropout_13/dropout/ShapeShape.sequential_4/max_pooling2d_13/MaxPool:output:0*
T0*
_output_shapes
:2'
%sequential_4/dropout_13/dropout/Shape�
<sequential_4/dropout_13/dropout/random_uniform/RandomUniformRandomUniform.sequential_4/dropout_13/dropout/Shape:output:0*
T0*/
_output_shapes
:���������@*
dtype02>
<sequential_4/dropout_13/dropout/random_uniform/RandomUniform�
.sequential_4/dropout_13/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>20
.sequential_4/dropout_13/dropout/GreaterEqual/y�
,sequential_4/dropout_13/dropout/GreaterEqualGreaterEqualEsequential_4/dropout_13/dropout/random_uniform/RandomUniform:output:07sequential_4/dropout_13/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@2.
,sequential_4/dropout_13/dropout/GreaterEqual�
$sequential_4/dropout_13/dropout/CastCast0sequential_4/dropout_13/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������@2&
$sequential_4/dropout_13/dropout/Cast�
%sequential_4/dropout_13/dropout/Mul_1Mul'sequential_4/dropout_13/dropout/Mul:z:0(sequential_4/dropout_13/dropout/Cast:y:0*
T0*/
_output_shapes
:���������@2'
%sequential_4/dropout_13/dropout/Mul_1�
,sequential_4/conv2d_14/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_14_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype02.
,sequential_4/conv2d_14/Conv2D/ReadVariableOp�
sequential_4/conv2d_14/Conv2DConv2D)sequential_4/dropout_13/dropout/Mul_1:z:04sequential_4/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
sequential_4/conv2d_14/Conv2D�
-sequential_4/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_14_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02/
-sequential_4/conv2d_14/BiasAdd/ReadVariableOp�
sequential_4/conv2d_14/BiasAddBiasAdd&sequential_4/conv2d_14/Conv2D:output:05sequential_4/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2 
sequential_4/conv2d_14/BiasAdd�
1sequential_4/batch_normalization_8/ReadVariableOpReadVariableOp:sequential_4_batch_normalization_8_readvariableop_resource*
_output_shapes	
:�*
dtype023
1sequential_4/batch_normalization_8/ReadVariableOp�
3sequential_4/batch_normalization_8/ReadVariableOp_1ReadVariableOp<sequential_4_batch_normalization_8_readvariableop_1_resource*
_output_shapes	
:�*
dtype025
3sequential_4/batch_normalization_8/ReadVariableOp_1�
Bsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02D
Bsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp�
Dsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02F
Dsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1�
3sequential_4/batch_normalization_8/FusedBatchNormV3FusedBatchNormV3'sequential_4/conv2d_14/BiasAdd:output:09sequential_4/batch_normalization_8/ReadVariableOp:value:0;sequential_4/batch_normalization_8/ReadVariableOp_1:value:0Jsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<25
3sequential_4/batch_normalization_8/FusedBatchNormV3�
1sequential_4/batch_normalization_8/AssignNewValueAssignVariableOpKsequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_resource@sequential_4/batch_normalization_8/FusedBatchNormV3:batch_mean:0C^sequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype023
1sequential_4/batch_normalization_8/AssignNewValue�
3sequential_4/batch_normalization_8/AssignNewValue_1AssignVariableOpMsequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resourceDsequential_4/batch_normalization_8/FusedBatchNormV3:batch_variance:0E^sequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype025
3sequential_4/batch_normalization_8/AssignNewValue_1�
sequential_4/activation_14/ReluRelu7sequential_4/batch_normalization_8/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:����������2!
sequential_4/activation_14/Relu�
%sequential_4/max_pooling2d_14/MaxPoolMaxPool-sequential_4/activation_14/Relu:activations:0*0
_output_shapes
:���������		�*
ksize
*
paddingVALID*
strides
2'
%sequential_4/max_pooling2d_14/MaxPool�
%sequential_4/dropout_14/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2'
%sequential_4/dropout_14/dropout/Const�
#sequential_4/dropout_14/dropout/MulMul.sequential_4/max_pooling2d_14/MaxPool:output:0.sequential_4/dropout_14/dropout/Const:output:0*
T0*0
_output_shapes
:���������		�2%
#sequential_4/dropout_14/dropout/Mul�
%sequential_4/dropout_14/dropout/ShapeShape.sequential_4/max_pooling2d_14/MaxPool:output:0*
T0*
_output_shapes
:2'
%sequential_4/dropout_14/dropout/Shape�
<sequential_4/dropout_14/dropout/random_uniform/RandomUniformRandomUniform.sequential_4/dropout_14/dropout/Shape:output:0*
T0*0
_output_shapes
:���������		�*
dtype02>
<sequential_4/dropout_14/dropout/random_uniform/RandomUniform�
.sequential_4/dropout_14/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>20
.sequential_4/dropout_14/dropout/GreaterEqual/y�
,sequential_4/dropout_14/dropout/GreaterEqualGreaterEqualEsequential_4/dropout_14/dropout/random_uniform/RandomUniform:output:07sequential_4/dropout_14/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:���������		�2.
,sequential_4/dropout_14/dropout/GreaterEqual�
$sequential_4/dropout_14/dropout/CastCast0sequential_4/dropout_14/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:���������		�2&
$sequential_4/dropout_14/dropout/Cast�
%sequential_4/dropout_14/dropout/Mul_1Mul'sequential_4/dropout_14/dropout/Mul:z:0(sequential_4/dropout_14/dropout/Cast:y:0*
T0*0
_output_shapes
:���������		�2'
%sequential_4/dropout_14/dropout/Mul_1�
sequential_4/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����(  2
sequential_4/flatten_4/Const�
sequential_4/flatten_4/ReshapeReshape)sequential_4/dropout_14/dropout/Mul_1:z:0%sequential_4/flatten_4/Const:output:0*
T0*(
_output_shapes
:����������Q2 
sequential_4/flatten_4/Reshape�
*sequential_4/dense_8/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_8_matmul_readvariableop_resource* 
_output_shapes
:
�Q�*
dtype02,
*sequential_4/dense_8/MatMul/ReadVariableOp�
sequential_4/dense_8/MatMulMatMul'sequential_4/flatten_4/Reshape:output:02sequential_4/dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_4/dense_8/MatMul�
+sequential_4/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_8_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02-
+sequential_4/dense_8/BiasAdd/ReadVariableOp�
sequential_4/dense_8/BiasAddBiasAdd%sequential_4/dense_8/MatMul:product:03sequential_4/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_4/dense_8/BiasAdd�
sequential_4/dense_8/SigmoidSigmoid%sequential_4/dense_8/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
sequential_4/dense_8/Sigmoid�
.sequential_4/conv2d_12/Conv2D_1/ReadVariableOpReadVariableOp5sequential_4_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype020
.sequential_4/conv2d_12/Conv2D_1/ReadVariableOp�
sequential_4/conv2d_12/Conv2D_1Conv2Dinputs_16sequential_4/conv2d_12/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������ee *
paddingVALID*
strides
2!
sequential_4/conv2d_12/Conv2D_1�
/sequential_4/conv2d_12/BiasAdd_1/ReadVariableOpReadVariableOp6sequential_4_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential_4/conv2d_12/BiasAdd_1/ReadVariableOp�
 sequential_4/conv2d_12/BiasAdd_1BiasAdd(sequential_4/conv2d_12/Conv2D_1:output:07sequential_4/conv2d_12/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������ee 2"
 sequential_4/conv2d_12/BiasAdd_1�
sequential_4/conv2d_12/Relu_1Relu)sequential_4/conv2d_12/BiasAdd_1:output:0*
T0*/
_output_shapes
:���������ee 2
sequential_4/conv2d_12/Relu_1�
3sequential_4/batch_normalization_6/ReadVariableOp_2ReadVariableOp:sequential_4_batch_normalization_6_readvariableop_resource*
_output_shapes
: *
dtype025
3sequential_4/batch_normalization_6/ReadVariableOp_2�
3sequential_4/batch_normalization_6/ReadVariableOp_3ReadVariableOp<sequential_4_batch_normalization_6_readvariableop_1_resource*
_output_shapes
: *
dtype025
3sequential_4/batch_normalization_6/ReadVariableOp_3�
Dsequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOpReadVariableOpKsequential_4_batch_normalization_6_fusedbatchnormv3_readvariableop_resource2^sequential_4/batch_normalization_6/AssignNewValue*
_output_shapes
: *
dtype02F
Dsequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp�
Fsequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpMsequential_4_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource4^sequential_4/batch_normalization_6/AssignNewValue_1*
_output_shapes
: *
dtype02H
Fsequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp_1�
5sequential_4/batch_normalization_6/FusedBatchNormV3_1FusedBatchNormV3+sequential_4/conv2d_12/Relu_1:activations:0;sequential_4/batch_normalization_6/ReadVariableOp_2:value:0;sequential_4/batch_normalization_6/ReadVariableOp_3:value:0Lsequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp:value:0Nsequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������ee : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<27
5sequential_4/batch_normalization_6/FusedBatchNormV3_1�
3sequential_4/batch_normalization_6/AssignNewValue_2AssignVariableOpKsequential_4_batch_normalization_6_fusedbatchnormv3_readvariableop_resourceBsequential_4/batch_normalization_6/FusedBatchNormV3_1:batch_mean:02^sequential_4/batch_normalization_6/AssignNewValueE^sequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp*
_output_shapes
 *
dtype025
3sequential_4/batch_normalization_6/AssignNewValue_2�
3sequential_4/batch_normalization_6/AssignNewValue_3AssignVariableOpMsequential_4_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resourceFsequential_4/batch_normalization_6/FusedBatchNormV3_1:batch_variance:04^sequential_4/batch_normalization_6/AssignNewValue_1G^sequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp_1*
_output_shapes
 *
dtype025
3sequential_4/batch_normalization_6/AssignNewValue_3�
!sequential_4/activation_12/Relu_1Relu9sequential_4/batch_normalization_6/FusedBatchNormV3_1:y:0*
T0*/
_output_shapes
:���������ee 2#
!sequential_4/activation_12/Relu_1�
'sequential_4/max_pooling2d_12/MaxPool_1MaxPool/sequential_4/activation_12/Relu_1:activations:0*/
_output_shapes
:���������22 *
ksize
*
paddingVALID*
strides
2)
'sequential_4/max_pooling2d_12/MaxPool_1�
'sequential_4/dropout_12/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2)
'sequential_4/dropout_12/dropout_1/Const�
%sequential_4/dropout_12/dropout_1/MulMul0sequential_4/max_pooling2d_12/MaxPool_1:output:00sequential_4/dropout_12/dropout_1/Const:output:0*
T0*/
_output_shapes
:���������22 2'
%sequential_4/dropout_12/dropout_1/Mul�
'sequential_4/dropout_12/dropout_1/ShapeShape0sequential_4/max_pooling2d_12/MaxPool_1:output:0*
T0*
_output_shapes
:2)
'sequential_4/dropout_12/dropout_1/Shape�
>sequential_4/dropout_12/dropout_1/random_uniform/RandomUniformRandomUniform0sequential_4/dropout_12/dropout_1/Shape:output:0*
T0*/
_output_shapes
:���������22 *
dtype02@
>sequential_4/dropout_12/dropout_1/random_uniform/RandomUniform�
0sequential_4/dropout_12/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>22
0sequential_4/dropout_12/dropout_1/GreaterEqual/y�
.sequential_4/dropout_12/dropout_1/GreaterEqualGreaterEqualGsequential_4/dropout_12/dropout_1/random_uniform/RandomUniform:output:09sequential_4/dropout_12/dropout_1/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������22 20
.sequential_4/dropout_12/dropout_1/GreaterEqual�
&sequential_4/dropout_12/dropout_1/CastCast2sequential_4/dropout_12/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������22 2(
&sequential_4/dropout_12/dropout_1/Cast�
'sequential_4/dropout_12/dropout_1/Mul_1Mul)sequential_4/dropout_12/dropout_1/Mul:z:0*sequential_4/dropout_12/dropout_1/Cast:y:0*
T0*/
_output_shapes
:���������22 2)
'sequential_4/dropout_12/dropout_1/Mul_1�
.sequential_4/conv2d_13/Conv2D_1/ReadVariableOpReadVariableOp5sequential_4_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype020
.sequential_4/conv2d_13/Conv2D_1/ReadVariableOp�
sequential_4/conv2d_13/Conv2D_1Conv2D+sequential_4/dropout_12/dropout_1/Mul_1:z:06sequential_4/conv2d_13/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������..@*
paddingVALID*
strides
2!
sequential_4/conv2d_13/Conv2D_1�
/sequential_4/conv2d_13/BiasAdd_1/ReadVariableOpReadVariableOp6sequential_4_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_4/conv2d_13/BiasAdd_1/ReadVariableOp�
 sequential_4/conv2d_13/BiasAdd_1BiasAdd(sequential_4/conv2d_13/Conv2D_1:output:07sequential_4/conv2d_13/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������..@2"
 sequential_4/conv2d_13/BiasAdd_1�
3sequential_4/batch_normalization_7/ReadVariableOp_2ReadVariableOp:sequential_4_batch_normalization_7_readvariableop_resource*
_output_shapes
:@*
dtype025
3sequential_4/batch_normalization_7/ReadVariableOp_2�
3sequential_4/batch_normalization_7/ReadVariableOp_3ReadVariableOp<sequential_4_batch_normalization_7_readvariableop_1_resource*
_output_shapes
:@*
dtype025
3sequential_4/batch_normalization_7/ReadVariableOp_3�
Dsequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOpReadVariableOpKsequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_resource2^sequential_4/batch_normalization_7/AssignNewValue*
_output_shapes
:@*
dtype02F
Dsequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp�
Fsequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpMsequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource4^sequential_4/batch_normalization_7/AssignNewValue_1*
_output_shapes
:@*
dtype02H
Fsequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp_1�
5sequential_4/batch_normalization_7/FusedBatchNormV3_1FusedBatchNormV3)sequential_4/conv2d_13/BiasAdd_1:output:0;sequential_4/batch_normalization_7/ReadVariableOp_2:value:0;sequential_4/batch_normalization_7/ReadVariableOp_3:value:0Lsequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp:value:0Nsequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������..@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<27
5sequential_4/batch_normalization_7/FusedBatchNormV3_1�
3sequential_4/batch_normalization_7/AssignNewValue_2AssignVariableOpKsequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_resourceBsequential_4/batch_normalization_7/FusedBatchNormV3_1:batch_mean:02^sequential_4/batch_normalization_7/AssignNewValueE^sequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp*
_output_shapes
 *
dtype025
3sequential_4/batch_normalization_7/AssignNewValue_2�
3sequential_4/batch_normalization_7/AssignNewValue_3AssignVariableOpMsequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resourceFsequential_4/batch_normalization_7/FusedBatchNormV3_1:batch_variance:04^sequential_4/batch_normalization_7/AssignNewValue_1G^sequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp_1*
_output_shapes
 *
dtype025
3sequential_4/batch_normalization_7/AssignNewValue_3�
!sequential_4/activation_13/Relu_1Relu9sequential_4/batch_normalization_7/FusedBatchNormV3_1:y:0*
T0*/
_output_shapes
:���������..@2#
!sequential_4/activation_13/Relu_1�
'sequential_4/max_pooling2d_13/MaxPool_1MaxPool/sequential_4/activation_13/Relu_1:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
2)
'sequential_4/max_pooling2d_13/MaxPool_1�
'sequential_4/dropout_13/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2)
'sequential_4/dropout_13/dropout_1/Const�
%sequential_4/dropout_13/dropout_1/MulMul0sequential_4/max_pooling2d_13/MaxPool_1:output:00sequential_4/dropout_13/dropout_1/Const:output:0*
T0*/
_output_shapes
:���������@2'
%sequential_4/dropout_13/dropout_1/Mul�
'sequential_4/dropout_13/dropout_1/ShapeShape0sequential_4/max_pooling2d_13/MaxPool_1:output:0*
T0*
_output_shapes
:2)
'sequential_4/dropout_13/dropout_1/Shape�
>sequential_4/dropout_13/dropout_1/random_uniform/RandomUniformRandomUniform0sequential_4/dropout_13/dropout_1/Shape:output:0*
T0*/
_output_shapes
:���������@*
dtype02@
>sequential_4/dropout_13/dropout_1/random_uniform/RandomUniform�
0sequential_4/dropout_13/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>22
0sequential_4/dropout_13/dropout_1/GreaterEqual/y�
.sequential_4/dropout_13/dropout_1/GreaterEqualGreaterEqualGsequential_4/dropout_13/dropout_1/random_uniform/RandomUniform:output:09sequential_4/dropout_13/dropout_1/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@20
.sequential_4/dropout_13/dropout_1/GreaterEqual�
&sequential_4/dropout_13/dropout_1/CastCast2sequential_4/dropout_13/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������@2(
&sequential_4/dropout_13/dropout_1/Cast�
'sequential_4/dropout_13/dropout_1/Mul_1Mul)sequential_4/dropout_13/dropout_1/Mul:z:0*sequential_4/dropout_13/dropout_1/Cast:y:0*
T0*/
_output_shapes
:���������@2)
'sequential_4/dropout_13/dropout_1/Mul_1�
.sequential_4/conv2d_14/Conv2D_1/ReadVariableOpReadVariableOp5sequential_4_conv2d_14_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype020
.sequential_4/conv2d_14/Conv2D_1/ReadVariableOp�
sequential_4/conv2d_14/Conv2D_1Conv2D+sequential_4/dropout_13/dropout_1/Mul_1:z:06sequential_4/conv2d_14/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2!
sequential_4/conv2d_14/Conv2D_1�
/sequential_4/conv2d_14/BiasAdd_1/ReadVariableOpReadVariableOp6sequential_4_conv2d_14_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype021
/sequential_4/conv2d_14/BiasAdd_1/ReadVariableOp�
 sequential_4/conv2d_14/BiasAdd_1BiasAdd(sequential_4/conv2d_14/Conv2D_1:output:07sequential_4/conv2d_14/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2"
 sequential_4/conv2d_14/BiasAdd_1�
3sequential_4/batch_normalization_8/ReadVariableOp_2ReadVariableOp:sequential_4_batch_normalization_8_readvariableop_resource*
_output_shapes	
:�*
dtype025
3sequential_4/batch_normalization_8/ReadVariableOp_2�
3sequential_4/batch_normalization_8/ReadVariableOp_3ReadVariableOp<sequential_4_batch_normalization_8_readvariableop_1_resource*
_output_shapes	
:�*
dtype025
3sequential_4/batch_normalization_8/ReadVariableOp_3�
Dsequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOpReadVariableOpKsequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_resource2^sequential_4/batch_normalization_8/AssignNewValue*
_output_shapes	
:�*
dtype02F
Dsequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp�
Fsequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpMsequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource4^sequential_4/batch_normalization_8/AssignNewValue_1*
_output_shapes	
:�*
dtype02H
Fsequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp_1�
5sequential_4/batch_normalization_8/FusedBatchNormV3_1FusedBatchNormV3)sequential_4/conv2d_14/BiasAdd_1:output:0;sequential_4/batch_normalization_8/ReadVariableOp_2:value:0;sequential_4/batch_normalization_8/ReadVariableOp_3:value:0Lsequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp:value:0Nsequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<27
5sequential_4/batch_normalization_8/FusedBatchNormV3_1�
3sequential_4/batch_normalization_8/AssignNewValue_2AssignVariableOpKsequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_resourceBsequential_4/batch_normalization_8/FusedBatchNormV3_1:batch_mean:02^sequential_4/batch_normalization_8/AssignNewValueE^sequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp*
_output_shapes
 *
dtype025
3sequential_4/batch_normalization_8/AssignNewValue_2�
3sequential_4/batch_normalization_8/AssignNewValue_3AssignVariableOpMsequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resourceFsequential_4/batch_normalization_8/FusedBatchNormV3_1:batch_variance:04^sequential_4/batch_normalization_8/AssignNewValue_1G^sequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp_1*
_output_shapes
 *
dtype025
3sequential_4/batch_normalization_8/AssignNewValue_3�
!sequential_4/activation_14/Relu_1Relu9sequential_4/batch_normalization_8/FusedBatchNormV3_1:y:0*
T0*0
_output_shapes
:����������2#
!sequential_4/activation_14/Relu_1�
'sequential_4/max_pooling2d_14/MaxPool_1MaxPool/sequential_4/activation_14/Relu_1:activations:0*0
_output_shapes
:���������		�*
ksize
*
paddingVALID*
strides
2)
'sequential_4/max_pooling2d_14/MaxPool_1�
'sequential_4/dropout_14/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2)
'sequential_4/dropout_14/dropout_1/Const�
%sequential_4/dropout_14/dropout_1/MulMul0sequential_4/max_pooling2d_14/MaxPool_1:output:00sequential_4/dropout_14/dropout_1/Const:output:0*
T0*0
_output_shapes
:���������		�2'
%sequential_4/dropout_14/dropout_1/Mul�
'sequential_4/dropout_14/dropout_1/ShapeShape0sequential_4/max_pooling2d_14/MaxPool_1:output:0*
T0*
_output_shapes
:2)
'sequential_4/dropout_14/dropout_1/Shape�
>sequential_4/dropout_14/dropout_1/random_uniform/RandomUniformRandomUniform0sequential_4/dropout_14/dropout_1/Shape:output:0*
T0*0
_output_shapes
:���������		�*
dtype02@
>sequential_4/dropout_14/dropout_1/random_uniform/RandomUniform�
0sequential_4/dropout_14/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>22
0sequential_4/dropout_14/dropout_1/GreaterEqual/y�
.sequential_4/dropout_14/dropout_1/GreaterEqualGreaterEqualGsequential_4/dropout_14/dropout_1/random_uniform/RandomUniform:output:09sequential_4/dropout_14/dropout_1/GreaterEqual/y:output:0*
T0*0
_output_shapes
:���������		�20
.sequential_4/dropout_14/dropout_1/GreaterEqual�
&sequential_4/dropout_14/dropout_1/CastCast2sequential_4/dropout_14/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:���������		�2(
&sequential_4/dropout_14/dropout_1/Cast�
'sequential_4/dropout_14/dropout_1/Mul_1Mul)sequential_4/dropout_14/dropout_1/Mul:z:0*sequential_4/dropout_14/dropout_1/Cast:y:0*
T0*0
_output_shapes
:���������		�2)
'sequential_4/dropout_14/dropout_1/Mul_1�
sequential_4/flatten_4/Const_1Const*
_output_shapes
:*
dtype0*
valueB"�����(  2 
sequential_4/flatten_4/Const_1�
 sequential_4/flatten_4/Reshape_1Reshape+sequential_4/dropout_14/dropout_1/Mul_1:z:0'sequential_4/flatten_4/Const_1:output:0*
T0*(
_output_shapes
:����������Q2"
 sequential_4/flatten_4/Reshape_1�
,sequential_4/dense_8/MatMul_1/ReadVariableOpReadVariableOp3sequential_4_dense_8_matmul_readvariableop_resource* 
_output_shapes
:
�Q�*
dtype02.
,sequential_4/dense_8/MatMul_1/ReadVariableOp�
sequential_4/dense_8/MatMul_1MatMul)sequential_4/flatten_4/Reshape_1:output:04sequential_4/dense_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_4/dense_8/MatMul_1�
-sequential_4/dense_8/BiasAdd_1/ReadVariableOpReadVariableOp4sequential_4_dense_8_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02/
-sequential_4/dense_8/BiasAdd_1/ReadVariableOp�
sequential_4/dense_8/BiasAdd_1BiasAdd'sequential_4/dense_8/MatMul_1:product:05sequential_4/dense_8/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2 
sequential_4/dense_8/BiasAdd_1�
sequential_4/dense_8/Sigmoid_1Sigmoid'sequential_4/dense_8/BiasAdd_1:output:0*
T0*(
_output_shapes
:����������2 
sequential_4/dense_8/Sigmoid_1�
lambda_4/subSub sequential_4/dense_8/Sigmoid:y:0"sequential_4/dense_8/Sigmoid_1:y:0*
T0*(
_output_shapes
:����������2
lambda_4/subh
lambda_4/AbsAbslambda_4/sub:z:0*
T0*(
_output_shapes
:����������2
lambda_4/Abs�
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
dense_9/MatMul/ReadVariableOp�
dense_9/MatMulMatMullambda_4/Abs:y:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_9/MatMul�
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_9/BiasAdd/ReadVariableOp�
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_9/BiasAddy
dense_9/SigmoidSigmoiddense_9/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense_9/Sigmoid�
2conv2d_12/kernel/Regularizer/Square/ReadVariableOpReadVariableOp5sequential_4_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype024
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_12/kernel/Regularizer/SquareSquare:conv2d_12/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_12/kernel/Regularizer/Square�
"conv2d_12/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_12/kernel/Regularizer/Const�
 conv2d_12/kernel/Regularizer/SumSum'conv2d_12/kernel/Regularizer/Square:y:0+conv2d_12/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/Sum�
"conv2d_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_12/kernel/Regularizer/mul/x�
 conv2d_12/kernel/Regularizer/mulMul+conv2d_12/kernel/Regularizer/mul/x:output:0)conv2d_12/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/mul�
2conv2d_13/kernel/Regularizer/Square/ReadVariableOpReadVariableOp5sequential_4_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype024
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_13/kernel/Regularizer/SquareSquare:conv2d_13/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_13/kernel/Regularizer/Square�
"conv2d_13/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_13/kernel/Regularizer/Const�
 conv2d_13/kernel/Regularizer/SumSum'conv2d_13/kernel/Regularizer/Square:y:0+conv2d_13/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/Sum�
"conv2d_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_13/kernel/Regularizer/mul/x�
 conv2d_13/kernel/Regularizer/mulMul+conv2d_13/kernel/Regularizer/mul/x:output:0)conv2d_13/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/mul�
2conv2d_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOp5sequential_4_conv2d_14_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype024
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_14/kernel/Regularizer/SquareSquare:conv2d_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�2%
#conv2d_14/kernel/Regularizer/Square�
"conv2d_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_14/kernel/Regularizer/Const�
 conv2d_14/kernel/Regularizer/SumSum'conv2d_14/kernel/Regularizer/Square:y:0+conv2d_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/Sum�
"conv2d_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_14/kernel/Regularizer/mul/x�
 conv2d_14/kernel/Regularizer/mulMul+conv2d_14/kernel/Regularizer/mul/x:output:0)conv2d_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/mul�
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp3sequential_4_dense_8_matmul_readvariableop_resource* 
_output_shapes
:
�Q�*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp�
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
�Q�2#
!dense_8/kernel/Regularizer/Square�
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const�
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum�
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2"
 dense_8/kernel/Regularizer/mul/x�
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul�
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp�
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2#
!dense_9/kernel/Regularizer/Square�
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const�
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum�
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2"
 dense_9/kernel/Regularizer/mul/x�
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mul�
IdentityIdentitydense_9/Sigmoid:y:03^conv2d_12/kernel/Regularizer/Square/ReadVariableOp3^conv2d_13/kernel/Regularizer/Square/ReadVariableOp3^conv2d_14/kernel/Regularizer/Square/ReadVariableOp1^dense_8/kernel/Regularizer/Square/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp1^dense_9/kernel/Regularizer/Square/ReadVariableOp2^sequential_4/batch_normalization_6/AssignNewValue4^sequential_4/batch_normalization_6/AssignNewValue_14^sequential_4/batch_normalization_6/AssignNewValue_24^sequential_4/batch_normalization_6/AssignNewValue_3C^sequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOpE^sequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1E^sequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOpG^sequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp_12^sequential_4/batch_normalization_6/ReadVariableOp4^sequential_4/batch_normalization_6/ReadVariableOp_14^sequential_4/batch_normalization_6/ReadVariableOp_24^sequential_4/batch_normalization_6/ReadVariableOp_32^sequential_4/batch_normalization_7/AssignNewValue4^sequential_4/batch_normalization_7/AssignNewValue_14^sequential_4/batch_normalization_7/AssignNewValue_24^sequential_4/batch_normalization_7/AssignNewValue_3C^sequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOpE^sequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1E^sequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOpG^sequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp_12^sequential_4/batch_normalization_7/ReadVariableOp4^sequential_4/batch_normalization_7/ReadVariableOp_14^sequential_4/batch_normalization_7/ReadVariableOp_24^sequential_4/batch_normalization_7/ReadVariableOp_32^sequential_4/batch_normalization_8/AssignNewValue4^sequential_4/batch_normalization_8/AssignNewValue_14^sequential_4/batch_normalization_8/AssignNewValue_24^sequential_4/batch_normalization_8/AssignNewValue_3C^sequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOpE^sequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1E^sequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOpG^sequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp_12^sequential_4/batch_normalization_8/ReadVariableOp4^sequential_4/batch_normalization_8/ReadVariableOp_14^sequential_4/batch_normalization_8/ReadVariableOp_24^sequential_4/batch_normalization_8/ReadVariableOp_3.^sequential_4/conv2d_12/BiasAdd/ReadVariableOp0^sequential_4/conv2d_12/BiasAdd_1/ReadVariableOp-^sequential_4/conv2d_12/Conv2D/ReadVariableOp/^sequential_4/conv2d_12/Conv2D_1/ReadVariableOp.^sequential_4/conv2d_13/BiasAdd/ReadVariableOp0^sequential_4/conv2d_13/BiasAdd_1/ReadVariableOp-^sequential_4/conv2d_13/Conv2D/ReadVariableOp/^sequential_4/conv2d_13/Conv2D_1/ReadVariableOp.^sequential_4/conv2d_14/BiasAdd/ReadVariableOp0^sequential_4/conv2d_14/BiasAdd_1/ReadVariableOp-^sequential_4/conv2d_14/Conv2D/ReadVariableOp/^sequential_4/conv2d_14/Conv2D_1/ReadVariableOp,^sequential_4/dense_8/BiasAdd/ReadVariableOp.^sequential_4/dense_8/BiasAdd_1/ReadVariableOp+^sequential_4/dense_8/MatMul/ReadVariableOp-^sequential_4/dense_8/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:���������ii:���������ii: : : : : : : : : : : : : : : : : : : : : : 2h
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2h
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2h
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp2f
1sequential_4/batch_normalization_6/AssignNewValue1sequential_4/batch_normalization_6/AssignNewValue2j
3sequential_4/batch_normalization_6/AssignNewValue_13sequential_4/batch_normalization_6/AssignNewValue_12j
3sequential_4/batch_normalization_6/AssignNewValue_23sequential_4/batch_normalization_6/AssignNewValue_22j
3sequential_4/batch_normalization_6/AssignNewValue_33sequential_4/batch_normalization_6/AssignNewValue_32�
Bsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOpBsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2�
Dsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Dsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12�
Dsequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOpDsequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp2�
Fsequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp_1Fsequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp_12f
1sequential_4/batch_normalization_6/ReadVariableOp1sequential_4/batch_normalization_6/ReadVariableOp2j
3sequential_4/batch_normalization_6/ReadVariableOp_13sequential_4/batch_normalization_6/ReadVariableOp_12j
3sequential_4/batch_normalization_6/ReadVariableOp_23sequential_4/batch_normalization_6/ReadVariableOp_22j
3sequential_4/batch_normalization_6/ReadVariableOp_33sequential_4/batch_normalization_6/ReadVariableOp_32f
1sequential_4/batch_normalization_7/AssignNewValue1sequential_4/batch_normalization_7/AssignNewValue2j
3sequential_4/batch_normalization_7/AssignNewValue_13sequential_4/batch_normalization_7/AssignNewValue_12j
3sequential_4/batch_normalization_7/AssignNewValue_23sequential_4/batch_normalization_7/AssignNewValue_22j
3sequential_4/batch_normalization_7/AssignNewValue_33sequential_4/batch_normalization_7/AssignNewValue_32�
Bsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOpBsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2�
Dsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Dsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12�
Dsequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOpDsequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp2�
Fsequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp_1Fsequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp_12f
1sequential_4/batch_normalization_7/ReadVariableOp1sequential_4/batch_normalization_7/ReadVariableOp2j
3sequential_4/batch_normalization_7/ReadVariableOp_13sequential_4/batch_normalization_7/ReadVariableOp_12j
3sequential_4/batch_normalization_7/ReadVariableOp_23sequential_4/batch_normalization_7/ReadVariableOp_22j
3sequential_4/batch_normalization_7/ReadVariableOp_33sequential_4/batch_normalization_7/ReadVariableOp_32f
1sequential_4/batch_normalization_8/AssignNewValue1sequential_4/batch_normalization_8/AssignNewValue2j
3sequential_4/batch_normalization_8/AssignNewValue_13sequential_4/batch_normalization_8/AssignNewValue_12j
3sequential_4/batch_normalization_8/AssignNewValue_23sequential_4/batch_normalization_8/AssignNewValue_22j
3sequential_4/batch_normalization_8/AssignNewValue_33sequential_4/batch_normalization_8/AssignNewValue_32�
Bsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOpBsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp2�
Dsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Dsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12�
Dsequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOpDsequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp2�
Fsequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp_1Fsequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp_12f
1sequential_4/batch_normalization_8/ReadVariableOp1sequential_4/batch_normalization_8/ReadVariableOp2j
3sequential_4/batch_normalization_8/ReadVariableOp_13sequential_4/batch_normalization_8/ReadVariableOp_12j
3sequential_4/batch_normalization_8/ReadVariableOp_23sequential_4/batch_normalization_8/ReadVariableOp_22j
3sequential_4/batch_normalization_8/ReadVariableOp_33sequential_4/batch_normalization_8/ReadVariableOp_32^
-sequential_4/conv2d_12/BiasAdd/ReadVariableOp-sequential_4/conv2d_12/BiasAdd/ReadVariableOp2b
/sequential_4/conv2d_12/BiasAdd_1/ReadVariableOp/sequential_4/conv2d_12/BiasAdd_1/ReadVariableOp2\
,sequential_4/conv2d_12/Conv2D/ReadVariableOp,sequential_4/conv2d_12/Conv2D/ReadVariableOp2`
.sequential_4/conv2d_12/Conv2D_1/ReadVariableOp.sequential_4/conv2d_12/Conv2D_1/ReadVariableOp2^
-sequential_4/conv2d_13/BiasAdd/ReadVariableOp-sequential_4/conv2d_13/BiasAdd/ReadVariableOp2b
/sequential_4/conv2d_13/BiasAdd_1/ReadVariableOp/sequential_4/conv2d_13/BiasAdd_1/ReadVariableOp2\
,sequential_4/conv2d_13/Conv2D/ReadVariableOp,sequential_4/conv2d_13/Conv2D/ReadVariableOp2`
.sequential_4/conv2d_13/Conv2D_1/ReadVariableOp.sequential_4/conv2d_13/Conv2D_1/ReadVariableOp2^
-sequential_4/conv2d_14/BiasAdd/ReadVariableOp-sequential_4/conv2d_14/BiasAdd/ReadVariableOp2b
/sequential_4/conv2d_14/BiasAdd_1/ReadVariableOp/sequential_4/conv2d_14/BiasAdd_1/ReadVariableOp2\
,sequential_4/conv2d_14/Conv2D/ReadVariableOp,sequential_4/conv2d_14/Conv2D/ReadVariableOp2`
.sequential_4/conv2d_14/Conv2D_1/ReadVariableOp.sequential_4/conv2d_14/Conv2D_1/ReadVariableOp2Z
+sequential_4/dense_8/BiasAdd/ReadVariableOp+sequential_4/dense_8/BiasAdd/ReadVariableOp2^
-sequential_4/dense_8/BiasAdd_1/ReadVariableOp-sequential_4/dense_8/BiasAdd_1/ReadVariableOp2X
*sequential_4/dense_8/MatMul/ReadVariableOp*sequential_4/dense_8/MatMul/ReadVariableOp2\
,sequential_4/dense_8/MatMul_1/ReadVariableOp,sequential_4/dense_8/MatMul_1/ReadVariableOp:Y U
/
_output_shapes
:���������ii
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:���������ii
"
_user_specified_name
inputs/1
�
�
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_3293199

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
H
,__inference_dropout_14_layer_call_fn_3293283

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_14_layer_call_and_return_conditional_losses_32902752
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:���������		�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������		�:X T
0
_output_shapes
:���������		�
 
_user_specified_nameinputs
�
i
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_3289933

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
o
E__inference_lambda_4_layer_call_and_return_conditional_losses_3291109

inputs
inputs_1
identityV
subSubinputsinputs_1*
T0*(
_output_shapes
:����������2
subM
AbsAbssub:z:0*
T0*(
_output_shapes
:����������2
Abs\
IdentityIdentityAbs:y:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
G__inference_dropout_12_layer_call_and_return_conditional_losses_3292882

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:���������22 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������22 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������22 :W S
/
_output_shapes
:���������22 
 
_user_specified_nameinputs
�
�
)__inference_model_4_layer_call_fn_3291495
input_9
input_10!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:
�Q�

unknown_18:	�

unknown_19:	�

unknown_20:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_9input_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_model_4_layer_call_and_return_conditional_losses_32913982
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:���������ii:���������ii: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������ii
!
_user_specified_name	input_9:YU
/
_output_shapes
:���������ii
"
_user_specified_name
input_10
�
f
J__inference_activation_13_layer_call_and_return_conditional_losses_3290203

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:���������..@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������..@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������..@:W S
/
_output_shapes
:���������..@
 
_user_specified_nameinputs
�
�
__inference_loss_fn_4_3293375M
9dense_8_kernel_regularizer_square_readvariableop_resource:
�Q�
identity��0dense_8/kernel/Regularizer/Square/ReadVariableOp�
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9dense_8_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
�Q�*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp�
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
�Q�2#
!dense_8/kernel/Regularizer/Square�
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const�
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum�
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2"
 dense_8/kernel/Regularizer/mul/x�
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul�
IdentityIdentity"dense_8/kernel/Regularizer/mul:z:01^dense_8/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp
��
�$
"__inference__wrapped_model_3289663
input_9
input_10W
=model_4_sequential_4_conv2d_12_conv2d_readvariableop_resource: L
>model_4_sequential_4_conv2d_12_biasadd_readvariableop_resource: P
Bmodel_4_sequential_4_batch_normalization_6_readvariableop_resource: R
Dmodel_4_sequential_4_batch_normalization_6_readvariableop_1_resource: a
Smodel_4_sequential_4_batch_normalization_6_fusedbatchnormv3_readvariableop_resource: c
Umodel_4_sequential_4_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource: W
=model_4_sequential_4_conv2d_13_conv2d_readvariableop_resource: @L
>model_4_sequential_4_conv2d_13_biasadd_readvariableop_resource:@P
Bmodel_4_sequential_4_batch_normalization_7_readvariableop_resource:@R
Dmodel_4_sequential_4_batch_normalization_7_readvariableop_1_resource:@a
Smodel_4_sequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_resource:@c
Umodel_4_sequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:@X
=model_4_sequential_4_conv2d_14_conv2d_readvariableop_resource:@�M
>model_4_sequential_4_conv2d_14_biasadd_readvariableop_resource:	�Q
Bmodel_4_sequential_4_batch_normalization_8_readvariableop_resource:	�S
Dmodel_4_sequential_4_batch_normalization_8_readvariableop_1_resource:	�b
Smodel_4_sequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_resource:	�d
Umodel_4_sequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource:	�O
;model_4_sequential_4_dense_8_matmul_readvariableop_resource:
�Q�K
<model_4_sequential_4_dense_8_biasadd_readvariableop_resource:	�A
.model_4_dense_9_matmul_readvariableop_resource:	�=
/model_4_dense_9_biasadd_readvariableop_resource:
identity��&model_4/dense_9/BiasAdd/ReadVariableOp�%model_4/dense_9/MatMul/ReadVariableOp�Jmodel_4/sequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp�Lmodel_4/sequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1�Lmodel_4/sequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp�Nmodel_4/sequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp_1�9model_4/sequential_4/batch_normalization_6/ReadVariableOp�;model_4/sequential_4/batch_normalization_6/ReadVariableOp_1�;model_4/sequential_4/batch_normalization_6/ReadVariableOp_2�;model_4/sequential_4/batch_normalization_6/ReadVariableOp_3�Jmodel_4/sequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp�Lmodel_4/sequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1�Lmodel_4/sequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp�Nmodel_4/sequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp_1�9model_4/sequential_4/batch_normalization_7/ReadVariableOp�;model_4/sequential_4/batch_normalization_7/ReadVariableOp_1�;model_4/sequential_4/batch_normalization_7/ReadVariableOp_2�;model_4/sequential_4/batch_normalization_7/ReadVariableOp_3�Jmodel_4/sequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp�Lmodel_4/sequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1�Lmodel_4/sequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp�Nmodel_4/sequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp_1�9model_4/sequential_4/batch_normalization_8/ReadVariableOp�;model_4/sequential_4/batch_normalization_8/ReadVariableOp_1�;model_4/sequential_4/batch_normalization_8/ReadVariableOp_2�;model_4/sequential_4/batch_normalization_8/ReadVariableOp_3�5model_4/sequential_4/conv2d_12/BiasAdd/ReadVariableOp�7model_4/sequential_4/conv2d_12/BiasAdd_1/ReadVariableOp�4model_4/sequential_4/conv2d_12/Conv2D/ReadVariableOp�6model_4/sequential_4/conv2d_12/Conv2D_1/ReadVariableOp�5model_4/sequential_4/conv2d_13/BiasAdd/ReadVariableOp�7model_4/sequential_4/conv2d_13/BiasAdd_1/ReadVariableOp�4model_4/sequential_4/conv2d_13/Conv2D/ReadVariableOp�6model_4/sequential_4/conv2d_13/Conv2D_1/ReadVariableOp�5model_4/sequential_4/conv2d_14/BiasAdd/ReadVariableOp�7model_4/sequential_4/conv2d_14/BiasAdd_1/ReadVariableOp�4model_4/sequential_4/conv2d_14/Conv2D/ReadVariableOp�6model_4/sequential_4/conv2d_14/Conv2D_1/ReadVariableOp�3model_4/sequential_4/dense_8/BiasAdd/ReadVariableOp�5model_4/sequential_4/dense_8/BiasAdd_1/ReadVariableOp�2model_4/sequential_4/dense_8/MatMul/ReadVariableOp�4model_4/sequential_4/dense_8/MatMul_1/ReadVariableOp�
4model_4/sequential_4/conv2d_12/Conv2D/ReadVariableOpReadVariableOp=model_4_sequential_4_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype026
4model_4/sequential_4/conv2d_12/Conv2D/ReadVariableOp�
%model_4/sequential_4/conv2d_12/Conv2DConv2Dinput_9<model_4/sequential_4/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������ee *
paddingVALID*
strides
2'
%model_4/sequential_4/conv2d_12/Conv2D�
5model_4/sequential_4/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp>model_4_sequential_4_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype027
5model_4/sequential_4/conv2d_12/BiasAdd/ReadVariableOp�
&model_4/sequential_4/conv2d_12/BiasAddBiasAdd.model_4/sequential_4/conv2d_12/Conv2D:output:0=model_4/sequential_4/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������ee 2(
&model_4/sequential_4/conv2d_12/BiasAdd�
#model_4/sequential_4/conv2d_12/ReluRelu/model_4/sequential_4/conv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:���������ee 2%
#model_4/sequential_4/conv2d_12/Relu�
9model_4/sequential_4/batch_normalization_6/ReadVariableOpReadVariableOpBmodel_4_sequential_4_batch_normalization_6_readvariableop_resource*
_output_shapes
: *
dtype02;
9model_4/sequential_4/batch_normalization_6/ReadVariableOp�
;model_4/sequential_4/batch_normalization_6/ReadVariableOp_1ReadVariableOpDmodel_4_sequential_4_batch_normalization_6_readvariableop_1_resource*
_output_shapes
: *
dtype02=
;model_4/sequential_4/batch_normalization_6/ReadVariableOp_1�
Jmodel_4/sequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpSmodel_4_sequential_4_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02L
Jmodel_4/sequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp�
Lmodel_4/sequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpUmodel_4_sequential_4_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02N
Lmodel_4/sequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1�
;model_4/sequential_4/batch_normalization_6/FusedBatchNormV3FusedBatchNormV31model_4/sequential_4/conv2d_12/Relu:activations:0Amodel_4/sequential_4/batch_normalization_6/ReadVariableOp:value:0Cmodel_4/sequential_4/batch_normalization_6/ReadVariableOp_1:value:0Rmodel_4/sequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Tmodel_4/sequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������ee : : : : :*
epsilon%o�:*
is_training( 2=
;model_4/sequential_4/batch_normalization_6/FusedBatchNormV3�
'model_4/sequential_4/activation_12/ReluRelu?model_4/sequential_4/batch_normalization_6/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������ee 2)
'model_4/sequential_4/activation_12/Relu�
-model_4/sequential_4/max_pooling2d_12/MaxPoolMaxPool5model_4/sequential_4/activation_12/Relu:activations:0*/
_output_shapes
:���������22 *
ksize
*
paddingVALID*
strides
2/
-model_4/sequential_4/max_pooling2d_12/MaxPool�
(model_4/sequential_4/dropout_12/IdentityIdentity6model_4/sequential_4/max_pooling2d_12/MaxPool:output:0*
T0*/
_output_shapes
:���������22 2*
(model_4/sequential_4/dropout_12/Identity�
4model_4/sequential_4/conv2d_13/Conv2D/ReadVariableOpReadVariableOp=model_4_sequential_4_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype026
4model_4/sequential_4/conv2d_13/Conv2D/ReadVariableOp�
%model_4/sequential_4/conv2d_13/Conv2DConv2D1model_4/sequential_4/dropout_12/Identity:output:0<model_4/sequential_4/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������..@*
paddingVALID*
strides
2'
%model_4/sequential_4/conv2d_13/Conv2D�
5model_4/sequential_4/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp>model_4_sequential_4_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype027
5model_4/sequential_4/conv2d_13/BiasAdd/ReadVariableOp�
&model_4/sequential_4/conv2d_13/BiasAddBiasAdd.model_4/sequential_4/conv2d_13/Conv2D:output:0=model_4/sequential_4/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������..@2(
&model_4/sequential_4/conv2d_13/BiasAdd�
9model_4/sequential_4/batch_normalization_7/ReadVariableOpReadVariableOpBmodel_4_sequential_4_batch_normalization_7_readvariableop_resource*
_output_shapes
:@*
dtype02;
9model_4/sequential_4/batch_normalization_7/ReadVariableOp�
;model_4/sequential_4/batch_normalization_7/ReadVariableOp_1ReadVariableOpDmodel_4_sequential_4_batch_normalization_7_readvariableop_1_resource*
_output_shapes
:@*
dtype02=
;model_4/sequential_4/batch_normalization_7/ReadVariableOp_1�
Jmodel_4/sequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpSmodel_4_sequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02L
Jmodel_4/sequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp�
Lmodel_4/sequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpUmodel_4_sequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02N
Lmodel_4/sequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1�
;model_4/sequential_4/batch_normalization_7/FusedBatchNormV3FusedBatchNormV3/model_4/sequential_4/conv2d_13/BiasAdd:output:0Amodel_4/sequential_4/batch_normalization_7/ReadVariableOp:value:0Cmodel_4/sequential_4/batch_normalization_7/ReadVariableOp_1:value:0Rmodel_4/sequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0Tmodel_4/sequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������..@:@:@:@:@:*
epsilon%o�:*
is_training( 2=
;model_4/sequential_4/batch_normalization_7/FusedBatchNormV3�
'model_4/sequential_4/activation_13/ReluRelu?model_4/sequential_4/batch_normalization_7/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������..@2)
'model_4/sequential_4/activation_13/Relu�
-model_4/sequential_4/max_pooling2d_13/MaxPoolMaxPool5model_4/sequential_4/activation_13/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
2/
-model_4/sequential_4/max_pooling2d_13/MaxPool�
(model_4/sequential_4/dropout_13/IdentityIdentity6model_4/sequential_4/max_pooling2d_13/MaxPool:output:0*
T0*/
_output_shapes
:���������@2*
(model_4/sequential_4/dropout_13/Identity�
4model_4/sequential_4/conv2d_14/Conv2D/ReadVariableOpReadVariableOp=model_4_sequential_4_conv2d_14_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype026
4model_4/sequential_4/conv2d_14/Conv2D/ReadVariableOp�
%model_4/sequential_4/conv2d_14/Conv2DConv2D1model_4/sequential_4/dropout_13/Identity:output:0<model_4/sequential_4/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2'
%model_4/sequential_4/conv2d_14/Conv2D�
5model_4/sequential_4/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp>model_4_sequential_4_conv2d_14_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype027
5model_4/sequential_4/conv2d_14/BiasAdd/ReadVariableOp�
&model_4/sequential_4/conv2d_14/BiasAddBiasAdd.model_4/sequential_4/conv2d_14/Conv2D:output:0=model_4/sequential_4/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2(
&model_4/sequential_4/conv2d_14/BiasAdd�
9model_4/sequential_4/batch_normalization_8/ReadVariableOpReadVariableOpBmodel_4_sequential_4_batch_normalization_8_readvariableop_resource*
_output_shapes	
:�*
dtype02;
9model_4/sequential_4/batch_normalization_8/ReadVariableOp�
;model_4/sequential_4/batch_normalization_8/ReadVariableOp_1ReadVariableOpDmodel_4_sequential_4_batch_normalization_8_readvariableop_1_resource*
_output_shapes	
:�*
dtype02=
;model_4/sequential_4/batch_normalization_8/ReadVariableOp_1�
Jmodel_4/sequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOpSmodel_4_sequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02L
Jmodel_4/sequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp�
Lmodel_4/sequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpUmodel_4_sequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02N
Lmodel_4/sequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1�
;model_4/sequential_4/batch_normalization_8/FusedBatchNormV3FusedBatchNormV3/model_4/sequential_4/conv2d_14/BiasAdd:output:0Amodel_4/sequential_4/batch_normalization_8/ReadVariableOp:value:0Cmodel_4/sequential_4/batch_normalization_8/ReadVariableOp_1:value:0Rmodel_4/sequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0Tmodel_4/sequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( 2=
;model_4/sequential_4/batch_normalization_8/FusedBatchNormV3�
'model_4/sequential_4/activation_14/ReluRelu?model_4/sequential_4/batch_normalization_8/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:����������2)
'model_4/sequential_4/activation_14/Relu�
-model_4/sequential_4/max_pooling2d_14/MaxPoolMaxPool5model_4/sequential_4/activation_14/Relu:activations:0*0
_output_shapes
:���������		�*
ksize
*
paddingVALID*
strides
2/
-model_4/sequential_4/max_pooling2d_14/MaxPool�
(model_4/sequential_4/dropout_14/IdentityIdentity6model_4/sequential_4/max_pooling2d_14/MaxPool:output:0*
T0*0
_output_shapes
:���������		�2*
(model_4/sequential_4/dropout_14/Identity�
$model_4/sequential_4/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����(  2&
$model_4/sequential_4/flatten_4/Const�
&model_4/sequential_4/flatten_4/ReshapeReshape1model_4/sequential_4/dropout_14/Identity:output:0-model_4/sequential_4/flatten_4/Const:output:0*
T0*(
_output_shapes
:����������Q2(
&model_4/sequential_4/flatten_4/Reshape�
2model_4/sequential_4/dense_8/MatMul/ReadVariableOpReadVariableOp;model_4_sequential_4_dense_8_matmul_readvariableop_resource* 
_output_shapes
:
�Q�*
dtype024
2model_4/sequential_4/dense_8/MatMul/ReadVariableOp�
#model_4/sequential_4/dense_8/MatMulMatMul/model_4/sequential_4/flatten_4/Reshape:output:0:model_4/sequential_4/dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2%
#model_4/sequential_4/dense_8/MatMul�
3model_4/sequential_4/dense_8/BiasAdd/ReadVariableOpReadVariableOp<model_4_sequential_4_dense_8_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype025
3model_4/sequential_4/dense_8/BiasAdd/ReadVariableOp�
$model_4/sequential_4/dense_8/BiasAddBiasAdd-model_4/sequential_4/dense_8/MatMul:product:0;model_4/sequential_4/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2&
$model_4/sequential_4/dense_8/BiasAdd�
$model_4/sequential_4/dense_8/SigmoidSigmoid-model_4/sequential_4/dense_8/BiasAdd:output:0*
T0*(
_output_shapes
:����������2&
$model_4/sequential_4/dense_8/Sigmoid�
6model_4/sequential_4/conv2d_12/Conv2D_1/ReadVariableOpReadVariableOp=model_4_sequential_4_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype028
6model_4/sequential_4/conv2d_12/Conv2D_1/ReadVariableOp�
'model_4/sequential_4/conv2d_12/Conv2D_1Conv2Dinput_10>model_4/sequential_4/conv2d_12/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������ee *
paddingVALID*
strides
2)
'model_4/sequential_4/conv2d_12/Conv2D_1�
7model_4/sequential_4/conv2d_12/BiasAdd_1/ReadVariableOpReadVariableOp>model_4_sequential_4_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype029
7model_4/sequential_4/conv2d_12/BiasAdd_1/ReadVariableOp�
(model_4/sequential_4/conv2d_12/BiasAdd_1BiasAdd0model_4/sequential_4/conv2d_12/Conv2D_1:output:0?model_4/sequential_4/conv2d_12/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������ee 2*
(model_4/sequential_4/conv2d_12/BiasAdd_1�
%model_4/sequential_4/conv2d_12/Relu_1Relu1model_4/sequential_4/conv2d_12/BiasAdd_1:output:0*
T0*/
_output_shapes
:���������ee 2'
%model_4/sequential_4/conv2d_12/Relu_1�
;model_4/sequential_4/batch_normalization_6/ReadVariableOp_2ReadVariableOpBmodel_4_sequential_4_batch_normalization_6_readvariableop_resource*
_output_shapes
: *
dtype02=
;model_4/sequential_4/batch_normalization_6/ReadVariableOp_2�
;model_4/sequential_4/batch_normalization_6/ReadVariableOp_3ReadVariableOpDmodel_4_sequential_4_batch_normalization_6_readvariableop_1_resource*
_output_shapes
: *
dtype02=
;model_4/sequential_4/batch_normalization_6/ReadVariableOp_3�
Lmodel_4/sequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOpReadVariableOpSmodel_4_sequential_4_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02N
Lmodel_4/sequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp�
Nmodel_4/sequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpUmodel_4_sequential_4_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02P
Nmodel_4/sequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp_1�
=model_4/sequential_4/batch_normalization_6/FusedBatchNormV3_1FusedBatchNormV33model_4/sequential_4/conv2d_12/Relu_1:activations:0Cmodel_4/sequential_4/batch_normalization_6/ReadVariableOp_2:value:0Cmodel_4/sequential_4/batch_normalization_6/ReadVariableOp_3:value:0Tmodel_4/sequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp:value:0Vmodel_4/sequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������ee : : : : :*
epsilon%o�:*
is_training( 2?
=model_4/sequential_4/batch_normalization_6/FusedBatchNormV3_1�
)model_4/sequential_4/activation_12/Relu_1ReluAmodel_4/sequential_4/batch_normalization_6/FusedBatchNormV3_1:y:0*
T0*/
_output_shapes
:���������ee 2+
)model_4/sequential_4/activation_12/Relu_1�
/model_4/sequential_4/max_pooling2d_12/MaxPool_1MaxPool7model_4/sequential_4/activation_12/Relu_1:activations:0*/
_output_shapes
:���������22 *
ksize
*
paddingVALID*
strides
21
/model_4/sequential_4/max_pooling2d_12/MaxPool_1�
*model_4/sequential_4/dropout_12/Identity_1Identity8model_4/sequential_4/max_pooling2d_12/MaxPool_1:output:0*
T0*/
_output_shapes
:���������22 2,
*model_4/sequential_4/dropout_12/Identity_1�
6model_4/sequential_4/conv2d_13/Conv2D_1/ReadVariableOpReadVariableOp=model_4_sequential_4_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype028
6model_4/sequential_4/conv2d_13/Conv2D_1/ReadVariableOp�
'model_4/sequential_4/conv2d_13/Conv2D_1Conv2D3model_4/sequential_4/dropout_12/Identity_1:output:0>model_4/sequential_4/conv2d_13/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������..@*
paddingVALID*
strides
2)
'model_4/sequential_4/conv2d_13/Conv2D_1�
7model_4/sequential_4/conv2d_13/BiasAdd_1/ReadVariableOpReadVariableOp>model_4_sequential_4_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype029
7model_4/sequential_4/conv2d_13/BiasAdd_1/ReadVariableOp�
(model_4/sequential_4/conv2d_13/BiasAdd_1BiasAdd0model_4/sequential_4/conv2d_13/Conv2D_1:output:0?model_4/sequential_4/conv2d_13/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������..@2*
(model_4/sequential_4/conv2d_13/BiasAdd_1�
;model_4/sequential_4/batch_normalization_7/ReadVariableOp_2ReadVariableOpBmodel_4_sequential_4_batch_normalization_7_readvariableop_resource*
_output_shapes
:@*
dtype02=
;model_4/sequential_4/batch_normalization_7/ReadVariableOp_2�
;model_4/sequential_4/batch_normalization_7/ReadVariableOp_3ReadVariableOpDmodel_4_sequential_4_batch_normalization_7_readvariableop_1_resource*
_output_shapes
:@*
dtype02=
;model_4/sequential_4/batch_normalization_7/ReadVariableOp_3�
Lmodel_4/sequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOpReadVariableOpSmodel_4_sequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02N
Lmodel_4/sequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp�
Nmodel_4/sequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpUmodel_4_sequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02P
Nmodel_4/sequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp_1�
=model_4/sequential_4/batch_normalization_7/FusedBatchNormV3_1FusedBatchNormV31model_4/sequential_4/conv2d_13/BiasAdd_1:output:0Cmodel_4/sequential_4/batch_normalization_7/ReadVariableOp_2:value:0Cmodel_4/sequential_4/batch_normalization_7/ReadVariableOp_3:value:0Tmodel_4/sequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp:value:0Vmodel_4/sequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������..@:@:@:@:@:*
epsilon%o�:*
is_training( 2?
=model_4/sequential_4/batch_normalization_7/FusedBatchNormV3_1�
)model_4/sequential_4/activation_13/Relu_1ReluAmodel_4/sequential_4/batch_normalization_7/FusedBatchNormV3_1:y:0*
T0*/
_output_shapes
:���������..@2+
)model_4/sequential_4/activation_13/Relu_1�
/model_4/sequential_4/max_pooling2d_13/MaxPool_1MaxPool7model_4/sequential_4/activation_13/Relu_1:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
21
/model_4/sequential_4/max_pooling2d_13/MaxPool_1�
*model_4/sequential_4/dropout_13/Identity_1Identity8model_4/sequential_4/max_pooling2d_13/MaxPool_1:output:0*
T0*/
_output_shapes
:���������@2,
*model_4/sequential_4/dropout_13/Identity_1�
6model_4/sequential_4/conv2d_14/Conv2D_1/ReadVariableOpReadVariableOp=model_4_sequential_4_conv2d_14_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype028
6model_4/sequential_4/conv2d_14/Conv2D_1/ReadVariableOp�
'model_4/sequential_4/conv2d_14/Conv2D_1Conv2D3model_4/sequential_4/dropout_13/Identity_1:output:0>model_4/sequential_4/conv2d_14/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2)
'model_4/sequential_4/conv2d_14/Conv2D_1�
7model_4/sequential_4/conv2d_14/BiasAdd_1/ReadVariableOpReadVariableOp>model_4_sequential_4_conv2d_14_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype029
7model_4/sequential_4/conv2d_14/BiasAdd_1/ReadVariableOp�
(model_4/sequential_4/conv2d_14/BiasAdd_1BiasAdd0model_4/sequential_4/conv2d_14/Conv2D_1:output:0?model_4/sequential_4/conv2d_14/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2*
(model_4/sequential_4/conv2d_14/BiasAdd_1�
;model_4/sequential_4/batch_normalization_8/ReadVariableOp_2ReadVariableOpBmodel_4_sequential_4_batch_normalization_8_readvariableop_resource*
_output_shapes	
:�*
dtype02=
;model_4/sequential_4/batch_normalization_8/ReadVariableOp_2�
;model_4/sequential_4/batch_normalization_8/ReadVariableOp_3ReadVariableOpDmodel_4_sequential_4_batch_normalization_8_readvariableop_1_resource*
_output_shapes	
:�*
dtype02=
;model_4/sequential_4/batch_normalization_8/ReadVariableOp_3�
Lmodel_4/sequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOpReadVariableOpSmodel_4_sequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02N
Lmodel_4/sequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp�
Nmodel_4/sequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpUmodel_4_sequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02P
Nmodel_4/sequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp_1�
=model_4/sequential_4/batch_normalization_8/FusedBatchNormV3_1FusedBatchNormV31model_4/sequential_4/conv2d_14/BiasAdd_1:output:0Cmodel_4/sequential_4/batch_normalization_8/ReadVariableOp_2:value:0Cmodel_4/sequential_4/batch_normalization_8/ReadVariableOp_3:value:0Tmodel_4/sequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp:value:0Vmodel_4/sequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( 2?
=model_4/sequential_4/batch_normalization_8/FusedBatchNormV3_1�
)model_4/sequential_4/activation_14/Relu_1ReluAmodel_4/sequential_4/batch_normalization_8/FusedBatchNormV3_1:y:0*
T0*0
_output_shapes
:����������2+
)model_4/sequential_4/activation_14/Relu_1�
/model_4/sequential_4/max_pooling2d_14/MaxPool_1MaxPool7model_4/sequential_4/activation_14/Relu_1:activations:0*0
_output_shapes
:���������		�*
ksize
*
paddingVALID*
strides
21
/model_4/sequential_4/max_pooling2d_14/MaxPool_1�
*model_4/sequential_4/dropout_14/Identity_1Identity8model_4/sequential_4/max_pooling2d_14/MaxPool_1:output:0*
T0*0
_output_shapes
:���������		�2,
*model_4/sequential_4/dropout_14/Identity_1�
&model_4/sequential_4/flatten_4/Const_1Const*
_output_shapes
:*
dtype0*
valueB"�����(  2(
&model_4/sequential_4/flatten_4/Const_1�
(model_4/sequential_4/flatten_4/Reshape_1Reshape3model_4/sequential_4/dropout_14/Identity_1:output:0/model_4/sequential_4/flatten_4/Const_1:output:0*
T0*(
_output_shapes
:����������Q2*
(model_4/sequential_4/flatten_4/Reshape_1�
4model_4/sequential_4/dense_8/MatMul_1/ReadVariableOpReadVariableOp;model_4_sequential_4_dense_8_matmul_readvariableop_resource* 
_output_shapes
:
�Q�*
dtype026
4model_4/sequential_4/dense_8/MatMul_1/ReadVariableOp�
%model_4/sequential_4/dense_8/MatMul_1MatMul1model_4/sequential_4/flatten_4/Reshape_1:output:0<model_4/sequential_4/dense_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2'
%model_4/sequential_4/dense_8/MatMul_1�
5model_4/sequential_4/dense_8/BiasAdd_1/ReadVariableOpReadVariableOp<model_4_sequential_4_dense_8_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype027
5model_4/sequential_4/dense_8/BiasAdd_1/ReadVariableOp�
&model_4/sequential_4/dense_8/BiasAdd_1BiasAdd/model_4/sequential_4/dense_8/MatMul_1:product:0=model_4/sequential_4/dense_8/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2(
&model_4/sequential_4/dense_8/BiasAdd_1�
&model_4/sequential_4/dense_8/Sigmoid_1Sigmoid/model_4/sequential_4/dense_8/BiasAdd_1:output:0*
T0*(
_output_shapes
:����������2(
&model_4/sequential_4/dense_8/Sigmoid_1�
model_4/lambda_4/subSub(model_4/sequential_4/dense_8/Sigmoid:y:0*model_4/sequential_4/dense_8/Sigmoid_1:y:0*
T0*(
_output_shapes
:����������2
model_4/lambda_4/sub�
model_4/lambda_4/AbsAbsmodel_4/lambda_4/sub:z:0*
T0*(
_output_shapes
:����������2
model_4/lambda_4/Abs�
%model_4/dense_9/MatMul/ReadVariableOpReadVariableOp.model_4_dense_9_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02'
%model_4/dense_9/MatMul/ReadVariableOp�
model_4/dense_9/MatMulMatMulmodel_4/lambda_4/Abs:y:0-model_4/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
model_4/dense_9/MatMul�
&model_4/dense_9/BiasAdd/ReadVariableOpReadVariableOp/model_4_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&model_4/dense_9/BiasAdd/ReadVariableOp�
model_4/dense_9/BiasAddBiasAdd model_4/dense_9/MatMul:product:0.model_4/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
model_4/dense_9/BiasAdd�
model_4/dense_9/SigmoidSigmoid model_4/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
model_4/dense_9/Sigmoid�
IdentityIdentitymodel_4/dense_9/Sigmoid:y:0'^model_4/dense_9/BiasAdd/ReadVariableOp&^model_4/dense_9/MatMul/ReadVariableOpK^model_4/sequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOpM^model_4/sequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1M^model_4/sequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOpO^model_4/sequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp_1:^model_4/sequential_4/batch_normalization_6/ReadVariableOp<^model_4/sequential_4/batch_normalization_6/ReadVariableOp_1<^model_4/sequential_4/batch_normalization_6/ReadVariableOp_2<^model_4/sequential_4/batch_normalization_6/ReadVariableOp_3K^model_4/sequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOpM^model_4/sequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1M^model_4/sequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOpO^model_4/sequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp_1:^model_4/sequential_4/batch_normalization_7/ReadVariableOp<^model_4/sequential_4/batch_normalization_7/ReadVariableOp_1<^model_4/sequential_4/batch_normalization_7/ReadVariableOp_2<^model_4/sequential_4/batch_normalization_7/ReadVariableOp_3K^model_4/sequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOpM^model_4/sequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1M^model_4/sequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOpO^model_4/sequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp_1:^model_4/sequential_4/batch_normalization_8/ReadVariableOp<^model_4/sequential_4/batch_normalization_8/ReadVariableOp_1<^model_4/sequential_4/batch_normalization_8/ReadVariableOp_2<^model_4/sequential_4/batch_normalization_8/ReadVariableOp_36^model_4/sequential_4/conv2d_12/BiasAdd/ReadVariableOp8^model_4/sequential_4/conv2d_12/BiasAdd_1/ReadVariableOp5^model_4/sequential_4/conv2d_12/Conv2D/ReadVariableOp7^model_4/sequential_4/conv2d_12/Conv2D_1/ReadVariableOp6^model_4/sequential_4/conv2d_13/BiasAdd/ReadVariableOp8^model_4/sequential_4/conv2d_13/BiasAdd_1/ReadVariableOp5^model_4/sequential_4/conv2d_13/Conv2D/ReadVariableOp7^model_4/sequential_4/conv2d_13/Conv2D_1/ReadVariableOp6^model_4/sequential_4/conv2d_14/BiasAdd/ReadVariableOp8^model_4/sequential_4/conv2d_14/BiasAdd_1/ReadVariableOp5^model_4/sequential_4/conv2d_14/Conv2D/ReadVariableOp7^model_4/sequential_4/conv2d_14/Conv2D_1/ReadVariableOp4^model_4/sequential_4/dense_8/BiasAdd/ReadVariableOp6^model_4/sequential_4/dense_8/BiasAdd_1/ReadVariableOp3^model_4/sequential_4/dense_8/MatMul/ReadVariableOp5^model_4/sequential_4/dense_8/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:���������ii:���������ii: : : : : : : : : : : : : : : : : : : : : : 2P
&model_4/dense_9/BiasAdd/ReadVariableOp&model_4/dense_9/BiasAdd/ReadVariableOp2N
%model_4/dense_9/MatMul/ReadVariableOp%model_4/dense_9/MatMul/ReadVariableOp2�
Jmodel_4/sequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOpJmodel_4/sequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2�
Lmodel_4/sequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Lmodel_4/sequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12�
Lmodel_4/sequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOpLmodel_4/sequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp2�
Nmodel_4/sequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp_1Nmodel_4/sequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp_12v
9model_4/sequential_4/batch_normalization_6/ReadVariableOp9model_4/sequential_4/batch_normalization_6/ReadVariableOp2z
;model_4/sequential_4/batch_normalization_6/ReadVariableOp_1;model_4/sequential_4/batch_normalization_6/ReadVariableOp_12z
;model_4/sequential_4/batch_normalization_6/ReadVariableOp_2;model_4/sequential_4/batch_normalization_6/ReadVariableOp_22z
;model_4/sequential_4/batch_normalization_6/ReadVariableOp_3;model_4/sequential_4/batch_normalization_6/ReadVariableOp_32�
Jmodel_4/sequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOpJmodel_4/sequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2�
Lmodel_4/sequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Lmodel_4/sequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12�
Lmodel_4/sequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOpLmodel_4/sequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp2�
Nmodel_4/sequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp_1Nmodel_4/sequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp_12v
9model_4/sequential_4/batch_normalization_7/ReadVariableOp9model_4/sequential_4/batch_normalization_7/ReadVariableOp2z
;model_4/sequential_4/batch_normalization_7/ReadVariableOp_1;model_4/sequential_4/batch_normalization_7/ReadVariableOp_12z
;model_4/sequential_4/batch_normalization_7/ReadVariableOp_2;model_4/sequential_4/batch_normalization_7/ReadVariableOp_22z
;model_4/sequential_4/batch_normalization_7/ReadVariableOp_3;model_4/sequential_4/batch_normalization_7/ReadVariableOp_32�
Jmodel_4/sequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOpJmodel_4/sequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp2�
Lmodel_4/sequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Lmodel_4/sequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12�
Lmodel_4/sequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOpLmodel_4/sequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp2�
Nmodel_4/sequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp_1Nmodel_4/sequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp_12v
9model_4/sequential_4/batch_normalization_8/ReadVariableOp9model_4/sequential_4/batch_normalization_8/ReadVariableOp2z
;model_4/sequential_4/batch_normalization_8/ReadVariableOp_1;model_4/sequential_4/batch_normalization_8/ReadVariableOp_12z
;model_4/sequential_4/batch_normalization_8/ReadVariableOp_2;model_4/sequential_4/batch_normalization_8/ReadVariableOp_22z
;model_4/sequential_4/batch_normalization_8/ReadVariableOp_3;model_4/sequential_4/batch_normalization_8/ReadVariableOp_32n
5model_4/sequential_4/conv2d_12/BiasAdd/ReadVariableOp5model_4/sequential_4/conv2d_12/BiasAdd/ReadVariableOp2r
7model_4/sequential_4/conv2d_12/BiasAdd_1/ReadVariableOp7model_4/sequential_4/conv2d_12/BiasAdd_1/ReadVariableOp2l
4model_4/sequential_4/conv2d_12/Conv2D/ReadVariableOp4model_4/sequential_4/conv2d_12/Conv2D/ReadVariableOp2p
6model_4/sequential_4/conv2d_12/Conv2D_1/ReadVariableOp6model_4/sequential_4/conv2d_12/Conv2D_1/ReadVariableOp2n
5model_4/sequential_4/conv2d_13/BiasAdd/ReadVariableOp5model_4/sequential_4/conv2d_13/BiasAdd/ReadVariableOp2r
7model_4/sequential_4/conv2d_13/BiasAdd_1/ReadVariableOp7model_4/sequential_4/conv2d_13/BiasAdd_1/ReadVariableOp2l
4model_4/sequential_4/conv2d_13/Conv2D/ReadVariableOp4model_4/sequential_4/conv2d_13/Conv2D/ReadVariableOp2p
6model_4/sequential_4/conv2d_13/Conv2D_1/ReadVariableOp6model_4/sequential_4/conv2d_13/Conv2D_1/ReadVariableOp2n
5model_4/sequential_4/conv2d_14/BiasAdd/ReadVariableOp5model_4/sequential_4/conv2d_14/BiasAdd/ReadVariableOp2r
7model_4/sequential_4/conv2d_14/BiasAdd_1/ReadVariableOp7model_4/sequential_4/conv2d_14/BiasAdd_1/ReadVariableOp2l
4model_4/sequential_4/conv2d_14/Conv2D/ReadVariableOp4model_4/sequential_4/conv2d_14/Conv2D/ReadVariableOp2p
6model_4/sequential_4/conv2d_14/Conv2D_1/ReadVariableOp6model_4/sequential_4/conv2d_14/Conv2D_1/ReadVariableOp2j
3model_4/sequential_4/dense_8/BiasAdd/ReadVariableOp3model_4/sequential_4/dense_8/BiasAdd/ReadVariableOp2n
5model_4/sequential_4/dense_8/BiasAdd_1/ReadVariableOp5model_4/sequential_4/dense_8/BiasAdd_1/ReadVariableOp2h
2model_4/sequential_4/dense_8/MatMul/ReadVariableOp2model_4/sequential_4/dense_8/MatMul/ReadVariableOp2l
4model_4/sequential_4/dense_8/MatMul_1/ReadVariableOp4model_4/sequential_4/dense_8/MatMul_1/ReadVariableOp:X T
/
_output_shapes
:���������ii
!
_user_specified_name	input_9:YU
/
_output_shapes
:���������ii
"
_user_specified_name
input_10
�
V
*__inference_lambda_4_layer_call_fn_3292668
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_lambda_4_layer_call_and_return_conditional_losses_32912392
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
�
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_3292989

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������..@:@:@:@:@:*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������..@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������..@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������..@
 
_user_specified_nameinputs
�
�
7__inference_batch_normalization_6_layer_call_fn_3292854

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������ee *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_32901242
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������ee 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������ee : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������ee 
 
_user_specified_nameinputs
�
f
G__inference_dropout_14_layer_call_and_return_conditional_losses_3293278

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:���������		�2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:���������		�*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:���������		�2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:���������		�2
dropout/Cast�
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:���������		�2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:���������		�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������		�:X T
0
_output_shapes
:���������		�
 
_user_specified_nameinputs
�
�
7__inference_batch_normalization_7_layer_call_fn_3293033

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_32898672
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
7__inference_batch_normalization_7_layer_call_fn_3293059

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������..@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_32905372
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������..@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������..@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������..@
 
_user_specified_nameinputs
��
�
I__inference_sequential_4_layer_call_and_return_conditional_losses_3292424

inputsB
(conv2d_12_conv2d_readvariableop_resource: 7
)conv2d_12_biasadd_readvariableop_resource: ;
-batch_normalization_6_readvariableop_resource: =
/batch_normalization_6_readvariableop_1_resource: L
>batch_normalization_6_fusedbatchnormv3_readvariableop_resource: N
@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource: B
(conv2d_13_conv2d_readvariableop_resource: @7
)conv2d_13_biasadd_readvariableop_resource:@;
-batch_normalization_7_readvariableop_resource:@=
/batch_normalization_7_readvariableop_1_resource:@L
>batch_normalization_7_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:@C
(conv2d_14_conv2d_readvariableop_resource:@�8
)conv2d_14_biasadd_readvariableop_resource:	�<
-batch_normalization_8_readvariableop_resource:	�>
/batch_normalization_8_readvariableop_1_resource:	�M
>batch_normalization_8_fusedbatchnormv3_readvariableop_resource:	�O
@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource:	�:
&dense_8_matmul_readvariableop_resource:
�Q�6
'dense_8_biasadd_readvariableop_resource:	�
identity��5batch_normalization_6/FusedBatchNormV3/ReadVariableOp�7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1�$batch_normalization_6/ReadVariableOp�&batch_normalization_6/ReadVariableOp_1�5batch_normalization_7/FusedBatchNormV3/ReadVariableOp�7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1�$batch_normalization_7/ReadVariableOp�&batch_normalization_7/ReadVariableOp_1�5batch_normalization_8/FusedBatchNormV3/ReadVariableOp�7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1�$batch_normalization_8/ReadVariableOp�&batch_normalization_8/ReadVariableOp_1� conv2d_12/BiasAdd/ReadVariableOp�conv2d_12/Conv2D/ReadVariableOp�2conv2d_12/kernel/Regularizer/Square/ReadVariableOp� conv2d_13/BiasAdd/ReadVariableOp�conv2d_13/Conv2D/ReadVariableOp�2conv2d_13/kernel/Regularizer/Square/ReadVariableOp� conv2d_14/BiasAdd/ReadVariableOp�conv2d_14/Conv2D/ReadVariableOp�2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�dense_8/BiasAdd/ReadVariableOp�dense_8/MatMul/ReadVariableOp�0dense_8/kernel/Regularizer/Square/ReadVariableOp�
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_12/Conv2D/ReadVariableOp�
conv2d_12/Conv2DConv2Dinputs'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������ee *
paddingVALID*
strides
2
conv2d_12/Conv2D�
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_12/BiasAdd/ReadVariableOp�
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������ee 2
conv2d_12/BiasAdd~
conv2d_12/ReluReluconv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:���������ee 2
conv2d_12/Relu�
$batch_normalization_6/ReadVariableOpReadVariableOp-batch_normalization_6_readvariableop_resource*
_output_shapes
: *
dtype02&
$batch_normalization_6/ReadVariableOp�
&batch_normalization_6/ReadVariableOp_1ReadVariableOp/batch_normalization_6_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&batch_normalization_6/ReadVariableOp_1�
5batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype027
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp�
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype029
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1�
&batch_normalization_6/FusedBatchNormV3FusedBatchNormV3conv2d_12/Relu:activations:0,batch_normalization_6/ReadVariableOp:value:0.batch_normalization_6/ReadVariableOp_1:value:0=batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������ee : : : : :*
epsilon%o�:*
is_training( 2(
&batch_normalization_6/FusedBatchNormV3�
activation_12/ReluRelu*batch_normalization_6/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������ee 2
activation_12/Relu�
max_pooling2d_12/MaxPoolMaxPool activation_12/Relu:activations:0*/
_output_shapes
:���������22 *
ksize
*
paddingVALID*
strides
2
max_pooling2d_12/MaxPool�
dropout_12/IdentityIdentity!max_pooling2d_12/MaxPool:output:0*
T0*/
_output_shapes
:���������22 2
dropout_12/Identity�
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_13/Conv2D/ReadVariableOp�
conv2d_13/Conv2DConv2Ddropout_12/Identity:output:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������..@*
paddingVALID*
strides
2
conv2d_13/Conv2D�
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_13/BiasAdd/ReadVariableOp�
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������..@2
conv2d_13/BiasAdd�
$batch_normalization_7/ReadVariableOpReadVariableOp-batch_normalization_7_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_7/ReadVariableOp�
&batch_normalization_7/ReadVariableOp_1ReadVariableOp/batch_normalization_7_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_7/ReadVariableOp_1�
5batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp�
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1�
&batch_normalization_7/FusedBatchNormV3FusedBatchNormV3conv2d_13/BiasAdd:output:0,batch_normalization_7/ReadVariableOp:value:0.batch_normalization_7/ReadVariableOp_1:value:0=batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������..@:@:@:@:@:*
epsilon%o�:*
is_training( 2(
&batch_normalization_7/FusedBatchNormV3�
activation_13/ReluRelu*batch_normalization_7/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������..@2
activation_13/Relu�
max_pooling2d_13/MaxPoolMaxPool activation_13/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_13/MaxPool�
dropout_13/IdentityIdentity!max_pooling2d_13/MaxPool:output:0*
T0*/
_output_shapes
:���������@2
dropout_13/Identity�
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype02!
conv2d_14/Conv2D/ReadVariableOp�
conv2d_14/Conv2DConv2Ddropout_13/Identity:output:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
conv2d_14/Conv2D�
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02"
 conv2d_14/BiasAdd/ReadVariableOp�
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
conv2d_14/BiasAdd�
$batch_normalization_8/ReadVariableOpReadVariableOp-batch_normalization_8_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$batch_normalization_8/ReadVariableOp�
&batch_normalization_8/ReadVariableOp_1ReadVariableOp/batch_normalization_8_readvariableop_1_resource*
_output_shapes	
:�*
dtype02(
&batch_normalization_8/ReadVariableOp_1�
5batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype027
5batch_normalization_8/FusedBatchNormV3/ReadVariableOp�
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype029
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1�
&batch_normalization_8/FusedBatchNormV3FusedBatchNormV3conv2d_14/BiasAdd:output:0,batch_normalization_8/ReadVariableOp:value:0.batch_normalization_8/ReadVariableOp_1:value:0=batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( 2(
&batch_normalization_8/FusedBatchNormV3�
activation_14/ReluRelu*batch_normalization_8/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:����������2
activation_14/Relu�
max_pooling2d_14/MaxPoolMaxPool activation_14/Relu:activations:0*0
_output_shapes
:���������		�*
ksize
*
paddingVALID*
strides
2
max_pooling2d_14/MaxPool�
dropout_14/IdentityIdentity!max_pooling2d_14/MaxPool:output:0*
T0*0
_output_shapes
:���������		�2
dropout_14/Identitys
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����(  2
flatten_4/Const�
flatten_4/ReshapeReshapedropout_14/Identity:output:0flatten_4/Const:output:0*
T0*(
_output_shapes
:����������Q2
flatten_4/Reshape�
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource* 
_output_shapes
:
�Q�*
dtype02
dense_8/MatMul/ReadVariableOp�
dense_8/MatMulMatMulflatten_4/Reshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_8/MatMul�
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
dense_8/BiasAdd/ReadVariableOp�
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_8/BiasAddz
dense_8/SigmoidSigmoiddense_8/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_8/Sigmoid�
2conv2d_12/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype024
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_12/kernel/Regularizer/SquareSquare:conv2d_12/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_12/kernel/Regularizer/Square�
"conv2d_12/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_12/kernel/Regularizer/Const�
 conv2d_12/kernel/Regularizer/SumSum'conv2d_12/kernel/Regularizer/Square:y:0+conv2d_12/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/Sum�
"conv2d_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_12/kernel/Regularizer/mul/x�
 conv2d_12/kernel/Regularizer/mulMul+conv2d_12/kernel/Regularizer/mul/x:output:0)conv2d_12/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/mul�
2conv2d_13/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype024
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_13/kernel/Regularizer/SquareSquare:conv2d_13/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_13/kernel/Regularizer/Square�
"conv2d_13/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_13/kernel/Regularizer/Const�
 conv2d_13/kernel/Regularizer/SumSum'conv2d_13/kernel/Regularizer/Square:y:0+conv2d_13/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/Sum�
"conv2d_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_13/kernel/Regularizer/mul/x�
 conv2d_13/kernel/Regularizer/mulMul+conv2d_13/kernel/Regularizer/mul/x:output:0)conv2d_13/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/mul�
2conv2d_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype024
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_14/kernel/Regularizer/SquareSquare:conv2d_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�2%
#conv2d_14/kernel/Regularizer/Square�
"conv2d_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_14/kernel/Regularizer/Const�
 conv2d_14/kernel/Regularizer/SumSum'conv2d_14/kernel/Regularizer/Square:y:0+conv2d_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/Sum�
"conv2d_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_14/kernel/Regularizer/mul/x�
 conv2d_14/kernel/Regularizer/mulMul+conv2d_14/kernel/Regularizer/mul/x:output:0)conv2d_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/mul�
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource* 
_output_shapes
:
�Q�*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp�
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
�Q�2#
!dense_8/kernel/Regularizer/Square�
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const�
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum�
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2"
 dense_8/kernel/Regularizer/mul/x�
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul�	
IdentityIdentitydense_8/Sigmoid:y:06^batch_normalization_6/FusedBatchNormV3/ReadVariableOp8^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_6/ReadVariableOp'^batch_normalization_6/ReadVariableOp_16^batch_normalization_7/FusedBatchNormV3/ReadVariableOp8^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_7/ReadVariableOp'^batch_normalization_7/ReadVariableOp_16^batch_normalization_8/FusedBatchNormV3/ReadVariableOp8^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_8/ReadVariableOp'^batch_normalization_8/ReadVariableOp_1!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp3^conv2d_12/kernel/Regularizer/Square/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp3^conv2d_13/kernel/Regularizer/Square/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp3^conv2d_14/kernel/Regularizer/Square/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp1^dense_8/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������ii: : : : : : : : : : : : : : : : : : : : 2n
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp5batch_normalization_6/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_17batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_6/ReadVariableOp$batch_normalization_6/ReadVariableOp2P
&batch_normalization_6/ReadVariableOp_1&batch_normalization_6/ReadVariableOp_12n
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp5batch_normalization_7/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_17batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_7/ReadVariableOp$batch_normalization_7/ReadVariableOp2P
&batch_normalization_7/ReadVariableOp_1&batch_normalization_7/ReadVariableOp_12n
5batch_normalization_8/FusedBatchNormV3/ReadVariableOp5batch_normalization_8/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_17batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_8/ReadVariableOp$batch_normalization_8/ReadVariableOp2P
&batch_normalization_8/ReadVariableOp_1&batch_normalization_8/ReadVariableOp_12D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2h
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2h
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2h
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������ii
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_3292815

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������ee : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������ee 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������ee : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������ee 
 
_user_specified_nameinputs
�U
�

D__inference_model_4_layer_call_and_return_conditional_losses_3291598
input_9
input_10.
sequential_4_3291499: "
sequential_4_3291501: "
sequential_4_3291503: "
sequential_4_3291505: "
sequential_4_3291507: "
sequential_4_3291509: .
sequential_4_3291511: @"
sequential_4_3291513:@"
sequential_4_3291515:@"
sequential_4_3291517:@"
sequential_4_3291519:@"
sequential_4_3291521:@/
sequential_4_3291523:@�#
sequential_4_3291525:	�#
sequential_4_3291527:	�#
sequential_4_3291529:	�#
sequential_4_3291531:	�#
sequential_4_3291533:	�(
sequential_4_3291535:
�Q�#
sequential_4_3291537:	�"
dense_9_3291562:	�
dense_9_3291564:
identity��2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�0dense_8/kernel/Regularizer/Square/ReadVariableOp�dense_9/StatefulPartitionedCall�0dense_9/kernel/Regularizer/Square/ReadVariableOp�$sequential_4/StatefulPartitionedCall�&sequential_4/StatefulPartitionedCall_1�
$sequential_4/StatefulPartitionedCallStatefulPartitionedCallinput_9sequential_4_3291499sequential_4_3291501sequential_4_3291503sequential_4_3291505sequential_4_3291507sequential_4_3291509sequential_4_3291511sequential_4_3291513sequential_4_3291515sequential_4_3291517sequential_4_3291519sequential_4_3291521sequential_4_3291523sequential_4_3291525sequential_4_3291527sequential_4_3291529sequential_4_3291531sequential_4_3291533sequential_4_3291535sequential_4_3291537* 
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_32903332&
$sequential_4/StatefulPartitionedCall�
&sequential_4/StatefulPartitionedCall_1StatefulPartitionedCallinput_10sequential_4_3291499sequential_4_3291501sequential_4_3291503sequential_4_3291505sequential_4_3291507sequential_4_3291509sequential_4_3291511sequential_4_3291513sequential_4_3291515sequential_4_3291517sequential_4_3291519sequential_4_3291521sequential_4_3291523sequential_4_3291525sequential_4_3291527sequential_4_3291529sequential_4_3291531sequential_4_3291533sequential_4_3291535sequential_4_3291537* 
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_32903332(
&sequential_4/StatefulPartitionedCall_1�
lambda_4/PartitionedCallPartitionedCall-sequential_4/StatefulPartitionedCall:output:0/sequential_4/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_lambda_4_layer_call_and_return_conditional_losses_32911092
lambda_4/PartitionedCall�
dense_9/StatefulPartitionedCallStatefulPartitionedCall!lambda_4/PartitionedCall:output:0dense_9_3291562dense_9_3291564*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_32911282!
dense_9/StatefulPartitionedCall�
2conv2d_12/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_4_3291499*&
_output_shapes
: *
dtype024
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_12/kernel/Regularizer/SquareSquare:conv2d_12/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_12/kernel/Regularizer/Square�
"conv2d_12/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_12/kernel/Regularizer/Const�
 conv2d_12/kernel/Regularizer/SumSum'conv2d_12/kernel/Regularizer/Square:y:0+conv2d_12/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/Sum�
"conv2d_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_12/kernel/Regularizer/mul/x�
 conv2d_12/kernel/Regularizer/mulMul+conv2d_12/kernel/Regularizer/mul/x:output:0)conv2d_12/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/mul�
2conv2d_13/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_4_3291511*&
_output_shapes
: @*
dtype024
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_13/kernel/Regularizer/SquareSquare:conv2d_13/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_13/kernel/Regularizer/Square�
"conv2d_13/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_13/kernel/Regularizer/Const�
 conv2d_13/kernel/Regularizer/SumSum'conv2d_13/kernel/Regularizer/Square:y:0+conv2d_13/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/Sum�
"conv2d_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_13/kernel/Regularizer/mul/x�
 conv2d_13/kernel/Regularizer/mulMul+conv2d_13/kernel/Regularizer/mul/x:output:0)conv2d_13/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/mul�
2conv2d_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_4_3291523*'
_output_shapes
:@�*
dtype024
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_14/kernel/Regularizer/SquareSquare:conv2d_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�2%
#conv2d_14/kernel/Regularizer/Square�
"conv2d_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_14/kernel/Regularizer/Const�
 conv2d_14/kernel/Regularizer/SumSum'conv2d_14/kernel/Regularizer/Square:y:0+conv2d_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/Sum�
"conv2d_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_14/kernel/Regularizer/mul/x�
 conv2d_14/kernel/Regularizer/mulMul+conv2d_14/kernel/Regularizer/mul/x:output:0)conv2d_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/mul�
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_4_3291535* 
_output_shapes
:
�Q�*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp�
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
�Q�2#
!dense_8/kernel/Regularizer/Square�
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const�
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum�
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2"
 dense_8/kernel/Regularizer/mul/x�
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul�
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_9_3291562*
_output_shapes
:	�*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp�
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2#
!dense_9/kernel/Regularizer/Square�
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const�
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum�
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2"
 dense_9/kernel/Regularizer/mul/x�
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mul�
IdentityIdentity(dense_9/StatefulPartitionedCall:output:03^conv2d_12/kernel/Regularizer/Square/ReadVariableOp3^conv2d_13/kernel/Regularizer/Square/ReadVariableOp3^conv2d_14/kernel/Regularizer/Square/ReadVariableOp1^dense_8/kernel/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall1^dense_9/kernel/Regularizer/Square/ReadVariableOp%^sequential_4/StatefulPartitionedCall'^sequential_4/StatefulPartitionedCall_1*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:���������ii:���������ii: : : : : : : : : : : : : : : : : : : : : : 2h
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2h
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2h
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2P
&sequential_4/StatefulPartitionedCall_1&sequential_4/StatefulPartitionedCall_1:X T
/
_output_shapes
:���������ii
!
_user_specified_name	input_9:YU
/
_output_shapes
:���������ii
"
_user_specified_name
input_10
�
o
E__inference_lambda_4_layer_call_and_return_conditional_losses_3291239

inputs
inputs_1
identityV
subSubinputsinputs_1*
T0*(
_output_shapes
:����������2
subM
AbsAbssub:z:0*
T0*(
_output_shapes
:����������2
Abs\
IdentityIdentityAbs:y:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_3292779

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+��������������������������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
f
G__inference_dropout_14_layer_call_and_return_conditional_losses_3290412

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:���������		�2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:���������		�*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:���������		�2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:���������		�2
dropout/Cast�
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:���������		�2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:���������		�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������		�:X T
0
_output_shapes
:���������		�
 
_user_specified_nameinputs
�
f
G__inference_dropout_12_layer_call_and_return_conditional_losses_3290578

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������22 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������22 *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������22 2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������22 2
dropout/Cast�
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:���������22 2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:���������22 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������22 :W S
/
_output_shapes
:���������22 
 
_user_specified_nameinputs
�
�
%__inference_signature_wrapper_3291787
input_10
input_9!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:
�Q�

unknown_18:	�

unknown_19:	�

unknown_20:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_9input_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference__wrapped_model_32896632
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:���������ii:���������ii: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:���������ii
"
_user_specified_name
input_10:XT
/
_output_shapes
:���������ii
!
_user_specified_name	input_9
��
�(
#__inference__traced_restore_3293781
file_prefix2
assignvariableop_dense_9_kernel:	�-
assignvariableop_1_dense_9_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: =
#assignvariableop_6_conv2d_12_kernel: /
!assignvariableop_7_conv2d_12_bias: <
.assignvariableop_8_batch_normalization_6_gamma: ;
-assignvariableop_9_batch_normalization_6_beta: C
5assignvariableop_10_batch_normalization_6_moving_mean: G
9assignvariableop_11_batch_normalization_6_moving_variance: >
$assignvariableop_12_conv2d_13_kernel: @0
"assignvariableop_13_conv2d_13_bias:@=
/assignvariableop_14_batch_normalization_7_gamma:@<
.assignvariableop_15_batch_normalization_7_beta:@C
5assignvariableop_16_batch_normalization_7_moving_mean:@G
9assignvariableop_17_batch_normalization_7_moving_variance:@?
$assignvariableop_18_conv2d_14_kernel:@�1
"assignvariableop_19_conv2d_14_bias:	�>
/assignvariableop_20_batch_normalization_8_gamma:	�=
.assignvariableop_21_batch_normalization_8_beta:	�D
5assignvariableop_22_batch_normalization_8_moving_mean:	�H
9assignvariableop_23_batch_normalization_8_moving_variance:	�6
"assignvariableop_24_dense_8_kernel:
�Q�/
 assignvariableop_25_dense_8_bias:	�#
assignvariableop_26_total: #
assignvariableop_27_count: %
assignvariableop_28_total_1: %
assignvariableop_29_count_1: <
)assignvariableop_30_adam_dense_9_kernel_m:	�5
'assignvariableop_31_adam_dense_9_bias_m:E
+assignvariableop_32_adam_conv2d_12_kernel_m: 7
)assignvariableop_33_adam_conv2d_12_bias_m: D
6assignvariableop_34_adam_batch_normalization_6_gamma_m: C
5assignvariableop_35_adam_batch_normalization_6_beta_m: E
+assignvariableop_36_adam_conv2d_13_kernel_m: @7
)assignvariableop_37_adam_conv2d_13_bias_m:@D
6assignvariableop_38_adam_batch_normalization_7_gamma_m:@C
5assignvariableop_39_adam_batch_normalization_7_beta_m:@F
+assignvariableop_40_adam_conv2d_14_kernel_m:@�8
)assignvariableop_41_adam_conv2d_14_bias_m:	�E
6assignvariableop_42_adam_batch_normalization_8_gamma_m:	�D
5assignvariableop_43_adam_batch_normalization_8_beta_m:	�=
)assignvariableop_44_adam_dense_8_kernel_m:
�Q�6
'assignvariableop_45_adam_dense_8_bias_m:	�<
)assignvariableop_46_adam_dense_9_kernel_v:	�5
'assignvariableop_47_adam_dense_9_bias_v:E
+assignvariableop_48_adam_conv2d_12_kernel_v: 7
)assignvariableop_49_adam_conv2d_12_bias_v: D
6assignvariableop_50_adam_batch_normalization_6_gamma_v: C
5assignvariableop_51_adam_batch_normalization_6_beta_v: E
+assignvariableop_52_adam_conv2d_13_kernel_v: @7
)assignvariableop_53_adam_conv2d_13_bias_v:@D
6assignvariableop_54_adam_batch_normalization_7_gamma_v:@C
5assignvariableop_55_adam_batch_normalization_7_beta_v:@F
+assignvariableop_56_adam_conv2d_14_kernel_v:@�8
)assignvariableop_57_adam_conv2d_14_bias_v:	�E
6assignvariableop_58_adam_batch_normalization_8_gamma_v:	�D
5assignvariableop_59_adam_batch_normalization_8_beta_v:	�=
)assignvariableop_60_adam_dense_8_kernel_v:
�Q�6
'assignvariableop_61_adam_dense_8_bias_v:	�
identity_63��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:?*
dtype0*�
value�B�?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:?*
dtype0*�
value�B�?B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*M
dtypesC
A2?	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOpassignvariableop_dense_9_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_9_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_12_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_12_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_6_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp-assignvariableop_9_batch_normalization_6_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp5assignvariableop_10_batch_normalization_6_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp9assignvariableop_11_batch_normalization_6_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_13_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_13_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp/assignvariableop_14_batch_normalization_7_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp.assignvariableop_15_batch_normalization_7_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp5assignvariableop_16_batch_normalization_7_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp9assignvariableop_17_batch_normalization_7_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_14_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_14_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp/assignvariableop_20_batch_normalization_8_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp.assignvariableop_21_batch_normalization_8_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp5assignvariableop_22_batch_normalization_8_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp9assignvariableop_23_batch_normalization_8_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp"assignvariableop_24_dense_8_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp assignvariableop_25_dense_8_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOpassignvariableop_26_totalIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOpassignvariableop_27_countIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOpassignvariableop_28_total_1Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOpassignvariableop_29_count_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_9_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_dense_9_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_conv2d_12_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_conv2d_12_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_batch_normalization_6_gamma_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35�
AssignVariableOp_35AssignVariableOp5assignvariableop_35_adam_batch_normalization_6_beta_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36�
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_conv2d_13_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37�
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_conv2d_13_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38�
AssignVariableOp_38AssignVariableOp6assignvariableop_38_adam_batch_normalization_7_gamma_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39�
AssignVariableOp_39AssignVariableOp5assignvariableop_39_adam_batch_normalization_7_beta_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40�
AssignVariableOp_40AssignVariableOp+assignvariableop_40_adam_conv2d_14_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41�
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_conv2d_14_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42�
AssignVariableOp_42AssignVariableOp6assignvariableop_42_adam_batch_normalization_8_gamma_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43�
AssignVariableOp_43AssignVariableOp5assignvariableop_43_adam_batch_normalization_8_beta_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44�
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_dense_8_kernel_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45�
AssignVariableOp_45AssignVariableOp'assignvariableop_45_adam_dense_8_bias_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46�
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_dense_9_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47�
AssignVariableOp_47AssignVariableOp'assignvariableop_47_adam_dense_9_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48�
AssignVariableOp_48AssignVariableOp+assignvariableop_48_adam_conv2d_12_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49�
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_conv2d_12_bias_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50�
AssignVariableOp_50AssignVariableOp6assignvariableop_50_adam_batch_normalization_6_gamma_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51�
AssignVariableOp_51AssignVariableOp5assignvariableop_51_adam_batch_normalization_6_beta_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52�
AssignVariableOp_52AssignVariableOp+assignvariableop_52_adam_conv2d_13_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53�
AssignVariableOp_53AssignVariableOp)assignvariableop_53_adam_conv2d_13_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54�
AssignVariableOp_54AssignVariableOp6assignvariableop_54_adam_batch_normalization_7_gamma_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55�
AssignVariableOp_55AssignVariableOp5assignvariableop_55_adam_batch_normalization_7_beta_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56�
AssignVariableOp_56AssignVariableOp+assignvariableop_56_adam_conv2d_14_kernel_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57�
AssignVariableOp_57AssignVariableOp)assignvariableop_57_adam_conv2d_14_bias_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58�
AssignVariableOp_58AssignVariableOp6assignvariableop_58_adam_batch_normalization_8_gamma_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59�
AssignVariableOp_59AssignVariableOp5assignvariableop_59_adam_batch_normalization_8_beta_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60�
AssignVariableOp_60AssignVariableOp)assignvariableop_60_adam_dense_8_kernel_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61�
AssignVariableOp_61AssignVariableOp'assignvariableop_61_adam_dense_8_bias_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_619
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_62Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_62�
Identity_63IdentityIdentity_62:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_63"#
identity_63Identity_63:output:0*�
_input_shapes�
~: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_61AssignVariableOp_612(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
��
�"
D__inference_model_4_layer_call_and_return_conditional_losses_3291969
inputs_0
inputs_1O
5sequential_4_conv2d_12_conv2d_readvariableop_resource: D
6sequential_4_conv2d_12_biasadd_readvariableop_resource: H
:sequential_4_batch_normalization_6_readvariableop_resource: J
<sequential_4_batch_normalization_6_readvariableop_1_resource: Y
Ksequential_4_batch_normalization_6_fusedbatchnormv3_readvariableop_resource: [
Msequential_4_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource: O
5sequential_4_conv2d_13_conv2d_readvariableop_resource: @D
6sequential_4_conv2d_13_biasadd_readvariableop_resource:@H
:sequential_4_batch_normalization_7_readvariableop_resource:@J
<sequential_4_batch_normalization_7_readvariableop_1_resource:@Y
Ksequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_resource:@[
Msequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:@P
5sequential_4_conv2d_14_conv2d_readvariableop_resource:@�E
6sequential_4_conv2d_14_biasadd_readvariableop_resource:	�I
:sequential_4_batch_normalization_8_readvariableop_resource:	�K
<sequential_4_batch_normalization_8_readvariableop_1_resource:	�Z
Ksequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_resource:	�\
Msequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource:	�G
3sequential_4_dense_8_matmul_readvariableop_resource:
�Q�C
4sequential_4_dense_8_biasadd_readvariableop_resource:	�9
&dense_9_matmul_readvariableop_resource:	�5
'dense_9_biasadd_readvariableop_resource:
identity��2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�0dense_8/kernel/Regularizer/Square/ReadVariableOp�dense_9/BiasAdd/ReadVariableOp�dense_9/MatMul/ReadVariableOp�0dense_9/kernel/Regularizer/Square/ReadVariableOp�Bsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp�Dsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1�Dsequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp�Fsequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp_1�1sequential_4/batch_normalization_6/ReadVariableOp�3sequential_4/batch_normalization_6/ReadVariableOp_1�3sequential_4/batch_normalization_6/ReadVariableOp_2�3sequential_4/batch_normalization_6/ReadVariableOp_3�Bsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp�Dsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1�Dsequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp�Fsequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp_1�1sequential_4/batch_normalization_7/ReadVariableOp�3sequential_4/batch_normalization_7/ReadVariableOp_1�3sequential_4/batch_normalization_7/ReadVariableOp_2�3sequential_4/batch_normalization_7/ReadVariableOp_3�Bsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp�Dsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1�Dsequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp�Fsequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp_1�1sequential_4/batch_normalization_8/ReadVariableOp�3sequential_4/batch_normalization_8/ReadVariableOp_1�3sequential_4/batch_normalization_8/ReadVariableOp_2�3sequential_4/batch_normalization_8/ReadVariableOp_3�-sequential_4/conv2d_12/BiasAdd/ReadVariableOp�/sequential_4/conv2d_12/BiasAdd_1/ReadVariableOp�,sequential_4/conv2d_12/Conv2D/ReadVariableOp�.sequential_4/conv2d_12/Conv2D_1/ReadVariableOp�-sequential_4/conv2d_13/BiasAdd/ReadVariableOp�/sequential_4/conv2d_13/BiasAdd_1/ReadVariableOp�,sequential_4/conv2d_13/Conv2D/ReadVariableOp�.sequential_4/conv2d_13/Conv2D_1/ReadVariableOp�-sequential_4/conv2d_14/BiasAdd/ReadVariableOp�/sequential_4/conv2d_14/BiasAdd_1/ReadVariableOp�,sequential_4/conv2d_14/Conv2D/ReadVariableOp�.sequential_4/conv2d_14/Conv2D_1/ReadVariableOp�+sequential_4/dense_8/BiasAdd/ReadVariableOp�-sequential_4/dense_8/BiasAdd_1/ReadVariableOp�*sequential_4/dense_8/MatMul/ReadVariableOp�,sequential_4/dense_8/MatMul_1/ReadVariableOp�
,sequential_4/conv2d_12/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02.
,sequential_4/conv2d_12/Conv2D/ReadVariableOp�
sequential_4/conv2d_12/Conv2DConv2Dinputs_04sequential_4/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������ee *
paddingVALID*
strides
2
sequential_4/conv2d_12/Conv2D�
-sequential_4/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_4/conv2d_12/BiasAdd/ReadVariableOp�
sequential_4/conv2d_12/BiasAddBiasAdd&sequential_4/conv2d_12/Conv2D:output:05sequential_4/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������ee 2 
sequential_4/conv2d_12/BiasAdd�
sequential_4/conv2d_12/ReluRelu'sequential_4/conv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:���������ee 2
sequential_4/conv2d_12/Relu�
1sequential_4/batch_normalization_6/ReadVariableOpReadVariableOp:sequential_4_batch_normalization_6_readvariableop_resource*
_output_shapes
: *
dtype023
1sequential_4/batch_normalization_6/ReadVariableOp�
3sequential_4/batch_normalization_6/ReadVariableOp_1ReadVariableOp<sequential_4_batch_normalization_6_readvariableop_1_resource*
_output_shapes
: *
dtype025
3sequential_4/batch_normalization_6/ReadVariableOp_1�
Bsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_4_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02D
Bsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp�
Dsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_4_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02F
Dsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1�
3sequential_4/batch_normalization_6/FusedBatchNormV3FusedBatchNormV3)sequential_4/conv2d_12/Relu:activations:09sequential_4/batch_normalization_6/ReadVariableOp:value:0;sequential_4/batch_normalization_6/ReadVariableOp_1:value:0Jsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������ee : : : : :*
epsilon%o�:*
is_training( 25
3sequential_4/batch_normalization_6/FusedBatchNormV3�
sequential_4/activation_12/ReluRelu7sequential_4/batch_normalization_6/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������ee 2!
sequential_4/activation_12/Relu�
%sequential_4/max_pooling2d_12/MaxPoolMaxPool-sequential_4/activation_12/Relu:activations:0*/
_output_shapes
:���������22 *
ksize
*
paddingVALID*
strides
2'
%sequential_4/max_pooling2d_12/MaxPool�
 sequential_4/dropout_12/IdentityIdentity.sequential_4/max_pooling2d_12/MaxPool:output:0*
T0*/
_output_shapes
:���������22 2"
 sequential_4/dropout_12/Identity�
,sequential_4/conv2d_13/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02.
,sequential_4/conv2d_13/Conv2D/ReadVariableOp�
sequential_4/conv2d_13/Conv2DConv2D)sequential_4/dropout_12/Identity:output:04sequential_4/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������..@*
paddingVALID*
strides
2
sequential_4/conv2d_13/Conv2D�
-sequential_4/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_4/conv2d_13/BiasAdd/ReadVariableOp�
sequential_4/conv2d_13/BiasAddBiasAdd&sequential_4/conv2d_13/Conv2D:output:05sequential_4/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������..@2 
sequential_4/conv2d_13/BiasAdd�
1sequential_4/batch_normalization_7/ReadVariableOpReadVariableOp:sequential_4_batch_normalization_7_readvariableop_resource*
_output_shapes
:@*
dtype023
1sequential_4/batch_normalization_7/ReadVariableOp�
3sequential_4/batch_normalization_7/ReadVariableOp_1ReadVariableOp<sequential_4_batch_normalization_7_readvariableop_1_resource*
_output_shapes
:@*
dtype025
3sequential_4/batch_normalization_7/ReadVariableOp_1�
Bsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02D
Bsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp�
Dsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02F
Dsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1�
3sequential_4/batch_normalization_7/FusedBatchNormV3FusedBatchNormV3'sequential_4/conv2d_13/BiasAdd:output:09sequential_4/batch_normalization_7/ReadVariableOp:value:0;sequential_4/batch_normalization_7/ReadVariableOp_1:value:0Jsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������..@:@:@:@:@:*
epsilon%o�:*
is_training( 25
3sequential_4/batch_normalization_7/FusedBatchNormV3�
sequential_4/activation_13/ReluRelu7sequential_4/batch_normalization_7/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������..@2!
sequential_4/activation_13/Relu�
%sequential_4/max_pooling2d_13/MaxPoolMaxPool-sequential_4/activation_13/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
2'
%sequential_4/max_pooling2d_13/MaxPool�
 sequential_4/dropout_13/IdentityIdentity.sequential_4/max_pooling2d_13/MaxPool:output:0*
T0*/
_output_shapes
:���������@2"
 sequential_4/dropout_13/Identity�
,sequential_4/conv2d_14/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_14_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype02.
,sequential_4/conv2d_14/Conv2D/ReadVariableOp�
sequential_4/conv2d_14/Conv2DConv2D)sequential_4/dropout_13/Identity:output:04sequential_4/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
sequential_4/conv2d_14/Conv2D�
-sequential_4/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_14_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02/
-sequential_4/conv2d_14/BiasAdd/ReadVariableOp�
sequential_4/conv2d_14/BiasAddBiasAdd&sequential_4/conv2d_14/Conv2D:output:05sequential_4/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2 
sequential_4/conv2d_14/BiasAdd�
1sequential_4/batch_normalization_8/ReadVariableOpReadVariableOp:sequential_4_batch_normalization_8_readvariableop_resource*
_output_shapes	
:�*
dtype023
1sequential_4/batch_normalization_8/ReadVariableOp�
3sequential_4/batch_normalization_8/ReadVariableOp_1ReadVariableOp<sequential_4_batch_normalization_8_readvariableop_1_resource*
_output_shapes	
:�*
dtype025
3sequential_4/batch_normalization_8/ReadVariableOp_1�
Bsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02D
Bsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp�
Dsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02F
Dsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1�
3sequential_4/batch_normalization_8/FusedBatchNormV3FusedBatchNormV3'sequential_4/conv2d_14/BiasAdd:output:09sequential_4/batch_normalization_8/ReadVariableOp:value:0;sequential_4/batch_normalization_8/ReadVariableOp_1:value:0Jsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( 25
3sequential_4/batch_normalization_8/FusedBatchNormV3�
sequential_4/activation_14/ReluRelu7sequential_4/batch_normalization_8/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:����������2!
sequential_4/activation_14/Relu�
%sequential_4/max_pooling2d_14/MaxPoolMaxPool-sequential_4/activation_14/Relu:activations:0*0
_output_shapes
:���������		�*
ksize
*
paddingVALID*
strides
2'
%sequential_4/max_pooling2d_14/MaxPool�
 sequential_4/dropout_14/IdentityIdentity.sequential_4/max_pooling2d_14/MaxPool:output:0*
T0*0
_output_shapes
:���������		�2"
 sequential_4/dropout_14/Identity�
sequential_4/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����(  2
sequential_4/flatten_4/Const�
sequential_4/flatten_4/ReshapeReshape)sequential_4/dropout_14/Identity:output:0%sequential_4/flatten_4/Const:output:0*
T0*(
_output_shapes
:����������Q2 
sequential_4/flatten_4/Reshape�
*sequential_4/dense_8/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_8_matmul_readvariableop_resource* 
_output_shapes
:
�Q�*
dtype02,
*sequential_4/dense_8/MatMul/ReadVariableOp�
sequential_4/dense_8/MatMulMatMul'sequential_4/flatten_4/Reshape:output:02sequential_4/dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_4/dense_8/MatMul�
+sequential_4/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_8_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02-
+sequential_4/dense_8/BiasAdd/ReadVariableOp�
sequential_4/dense_8/BiasAddBiasAdd%sequential_4/dense_8/MatMul:product:03sequential_4/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_4/dense_8/BiasAdd�
sequential_4/dense_8/SigmoidSigmoid%sequential_4/dense_8/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
sequential_4/dense_8/Sigmoid�
.sequential_4/conv2d_12/Conv2D_1/ReadVariableOpReadVariableOp5sequential_4_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype020
.sequential_4/conv2d_12/Conv2D_1/ReadVariableOp�
sequential_4/conv2d_12/Conv2D_1Conv2Dinputs_16sequential_4/conv2d_12/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������ee *
paddingVALID*
strides
2!
sequential_4/conv2d_12/Conv2D_1�
/sequential_4/conv2d_12/BiasAdd_1/ReadVariableOpReadVariableOp6sequential_4_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential_4/conv2d_12/BiasAdd_1/ReadVariableOp�
 sequential_4/conv2d_12/BiasAdd_1BiasAdd(sequential_4/conv2d_12/Conv2D_1:output:07sequential_4/conv2d_12/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������ee 2"
 sequential_4/conv2d_12/BiasAdd_1�
sequential_4/conv2d_12/Relu_1Relu)sequential_4/conv2d_12/BiasAdd_1:output:0*
T0*/
_output_shapes
:���������ee 2
sequential_4/conv2d_12/Relu_1�
3sequential_4/batch_normalization_6/ReadVariableOp_2ReadVariableOp:sequential_4_batch_normalization_6_readvariableop_resource*
_output_shapes
: *
dtype025
3sequential_4/batch_normalization_6/ReadVariableOp_2�
3sequential_4/batch_normalization_6/ReadVariableOp_3ReadVariableOp<sequential_4_batch_normalization_6_readvariableop_1_resource*
_output_shapes
: *
dtype025
3sequential_4/batch_normalization_6/ReadVariableOp_3�
Dsequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOpReadVariableOpKsequential_4_batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02F
Dsequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp�
Fsequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpMsequential_4_batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02H
Fsequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp_1�
5sequential_4/batch_normalization_6/FusedBatchNormV3_1FusedBatchNormV3+sequential_4/conv2d_12/Relu_1:activations:0;sequential_4/batch_normalization_6/ReadVariableOp_2:value:0;sequential_4/batch_normalization_6/ReadVariableOp_3:value:0Lsequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp:value:0Nsequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������ee : : : : :*
epsilon%o�:*
is_training( 27
5sequential_4/batch_normalization_6/FusedBatchNormV3_1�
!sequential_4/activation_12/Relu_1Relu9sequential_4/batch_normalization_6/FusedBatchNormV3_1:y:0*
T0*/
_output_shapes
:���������ee 2#
!sequential_4/activation_12/Relu_1�
'sequential_4/max_pooling2d_12/MaxPool_1MaxPool/sequential_4/activation_12/Relu_1:activations:0*/
_output_shapes
:���������22 *
ksize
*
paddingVALID*
strides
2)
'sequential_4/max_pooling2d_12/MaxPool_1�
"sequential_4/dropout_12/Identity_1Identity0sequential_4/max_pooling2d_12/MaxPool_1:output:0*
T0*/
_output_shapes
:���������22 2$
"sequential_4/dropout_12/Identity_1�
.sequential_4/conv2d_13/Conv2D_1/ReadVariableOpReadVariableOp5sequential_4_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype020
.sequential_4/conv2d_13/Conv2D_1/ReadVariableOp�
sequential_4/conv2d_13/Conv2D_1Conv2D+sequential_4/dropout_12/Identity_1:output:06sequential_4/conv2d_13/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������..@*
paddingVALID*
strides
2!
sequential_4/conv2d_13/Conv2D_1�
/sequential_4/conv2d_13/BiasAdd_1/ReadVariableOpReadVariableOp6sequential_4_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_4/conv2d_13/BiasAdd_1/ReadVariableOp�
 sequential_4/conv2d_13/BiasAdd_1BiasAdd(sequential_4/conv2d_13/Conv2D_1:output:07sequential_4/conv2d_13/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������..@2"
 sequential_4/conv2d_13/BiasAdd_1�
3sequential_4/batch_normalization_7/ReadVariableOp_2ReadVariableOp:sequential_4_batch_normalization_7_readvariableop_resource*
_output_shapes
:@*
dtype025
3sequential_4/batch_normalization_7/ReadVariableOp_2�
3sequential_4/batch_normalization_7/ReadVariableOp_3ReadVariableOp<sequential_4_batch_normalization_7_readvariableop_1_resource*
_output_shapes
:@*
dtype025
3sequential_4/batch_normalization_7/ReadVariableOp_3�
Dsequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOpReadVariableOpKsequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02F
Dsequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp�
Fsequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpMsequential_4_batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02H
Fsequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp_1�
5sequential_4/batch_normalization_7/FusedBatchNormV3_1FusedBatchNormV3)sequential_4/conv2d_13/BiasAdd_1:output:0;sequential_4/batch_normalization_7/ReadVariableOp_2:value:0;sequential_4/batch_normalization_7/ReadVariableOp_3:value:0Lsequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp:value:0Nsequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������..@:@:@:@:@:*
epsilon%o�:*
is_training( 27
5sequential_4/batch_normalization_7/FusedBatchNormV3_1�
!sequential_4/activation_13/Relu_1Relu9sequential_4/batch_normalization_7/FusedBatchNormV3_1:y:0*
T0*/
_output_shapes
:���������..@2#
!sequential_4/activation_13/Relu_1�
'sequential_4/max_pooling2d_13/MaxPool_1MaxPool/sequential_4/activation_13/Relu_1:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
2)
'sequential_4/max_pooling2d_13/MaxPool_1�
"sequential_4/dropout_13/Identity_1Identity0sequential_4/max_pooling2d_13/MaxPool_1:output:0*
T0*/
_output_shapes
:���������@2$
"sequential_4/dropout_13/Identity_1�
.sequential_4/conv2d_14/Conv2D_1/ReadVariableOpReadVariableOp5sequential_4_conv2d_14_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype020
.sequential_4/conv2d_14/Conv2D_1/ReadVariableOp�
sequential_4/conv2d_14/Conv2D_1Conv2D+sequential_4/dropout_13/Identity_1:output:06sequential_4/conv2d_14/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2!
sequential_4/conv2d_14/Conv2D_1�
/sequential_4/conv2d_14/BiasAdd_1/ReadVariableOpReadVariableOp6sequential_4_conv2d_14_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype021
/sequential_4/conv2d_14/BiasAdd_1/ReadVariableOp�
 sequential_4/conv2d_14/BiasAdd_1BiasAdd(sequential_4/conv2d_14/Conv2D_1:output:07sequential_4/conv2d_14/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2"
 sequential_4/conv2d_14/BiasAdd_1�
3sequential_4/batch_normalization_8/ReadVariableOp_2ReadVariableOp:sequential_4_batch_normalization_8_readvariableop_resource*
_output_shapes	
:�*
dtype025
3sequential_4/batch_normalization_8/ReadVariableOp_2�
3sequential_4/batch_normalization_8/ReadVariableOp_3ReadVariableOp<sequential_4_batch_normalization_8_readvariableop_1_resource*
_output_shapes	
:�*
dtype025
3sequential_4/batch_normalization_8/ReadVariableOp_3�
Dsequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOpReadVariableOpKsequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02F
Dsequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp�
Fsequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpMsequential_4_batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02H
Fsequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp_1�
5sequential_4/batch_normalization_8/FusedBatchNormV3_1FusedBatchNormV3)sequential_4/conv2d_14/BiasAdd_1:output:0;sequential_4/batch_normalization_8/ReadVariableOp_2:value:0;sequential_4/batch_normalization_8/ReadVariableOp_3:value:0Lsequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp:value:0Nsequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( 27
5sequential_4/batch_normalization_8/FusedBatchNormV3_1�
!sequential_4/activation_14/Relu_1Relu9sequential_4/batch_normalization_8/FusedBatchNormV3_1:y:0*
T0*0
_output_shapes
:����������2#
!sequential_4/activation_14/Relu_1�
'sequential_4/max_pooling2d_14/MaxPool_1MaxPool/sequential_4/activation_14/Relu_1:activations:0*0
_output_shapes
:���������		�*
ksize
*
paddingVALID*
strides
2)
'sequential_4/max_pooling2d_14/MaxPool_1�
"sequential_4/dropout_14/Identity_1Identity0sequential_4/max_pooling2d_14/MaxPool_1:output:0*
T0*0
_output_shapes
:���������		�2$
"sequential_4/dropout_14/Identity_1�
sequential_4/flatten_4/Const_1Const*
_output_shapes
:*
dtype0*
valueB"�����(  2 
sequential_4/flatten_4/Const_1�
 sequential_4/flatten_4/Reshape_1Reshape+sequential_4/dropout_14/Identity_1:output:0'sequential_4/flatten_4/Const_1:output:0*
T0*(
_output_shapes
:����������Q2"
 sequential_4/flatten_4/Reshape_1�
,sequential_4/dense_8/MatMul_1/ReadVariableOpReadVariableOp3sequential_4_dense_8_matmul_readvariableop_resource* 
_output_shapes
:
�Q�*
dtype02.
,sequential_4/dense_8/MatMul_1/ReadVariableOp�
sequential_4/dense_8/MatMul_1MatMul)sequential_4/flatten_4/Reshape_1:output:04sequential_4/dense_8/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_4/dense_8/MatMul_1�
-sequential_4/dense_8/BiasAdd_1/ReadVariableOpReadVariableOp4sequential_4_dense_8_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02/
-sequential_4/dense_8/BiasAdd_1/ReadVariableOp�
sequential_4/dense_8/BiasAdd_1BiasAdd'sequential_4/dense_8/MatMul_1:product:05sequential_4/dense_8/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2 
sequential_4/dense_8/BiasAdd_1�
sequential_4/dense_8/Sigmoid_1Sigmoid'sequential_4/dense_8/BiasAdd_1:output:0*
T0*(
_output_shapes
:����������2 
sequential_4/dense_8/Sigmoid_1�
lambda_4/subSub sequential_4/dense_8/Sigmoid:y:0"sequential_4/dense_8/Sigmoid_1:y:0*
T0*(
_output_shapes
:����������2
lambda_4/subh
lambda_4/AbsAbslambda_4/sub:z:0*
T0*(
_output_shapes
:����������2
lambda_4/Abs�
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
dense_9/MatMul/ReadVariableOp�
dense_9/MatMulMatMullambda_4/Abs:y:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_9/MatMul�
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_9/BiasAdd/ReadVariableOp�
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_9/BiasAddy
dense_9/SigmoidSigmoiddense_9/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense_9/Sigmoid�
2conv2d_12/kernel/Regularizer/Square/ReadVariableOpReadVariableOp5sequential_4_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype024
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_12/kernel/Regularizer/SquareSquare:conv2d_12/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_12/kernel/Regularizer/Square�
"conv2d_12/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_12/kernel/Regularizer/Const�
 conv2d_12/kernel/Regularizer/SumSum'conv2d_12/kernel/Regularizer/Square:y:0+conv2d_12/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/Sum�
"conv2d_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_12/kernel/Regularizer/mul/x�
 conv2d_12/kernel/Regularizer/mulMul+conv2d_12/kernel/Regularizer/mul/x:output:0)conv2d_12/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/mul�
2conv2d_13/kernel/Regularizer/Square/ReadVariableOpReadVariableOp5sequential_4_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype024
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_13/kernel/Regularizer/SquareSquare:conv2d_13/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_13/kernel/Regularizer/Square�
"conv2d_13/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_13/kernel/Regularizer/Const�
 conv2d_13/kernel/Regularizer/SumSum'conv2d_13/kernel/Regularizer/Square:y:0+conv2d_13/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/Sum�
"conv2d_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_13/kernel/Regularizer/mul/x�
 conv2d_13/kernel/Regularizer/mulMul+conv2d_13/kernel/Regularizer/mul/x:output:0)conv2d_13/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/mul�
2conv2d_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOp5sequential_4_conv2d_14_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype024
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_14/kernel/Regularizer/SquareSquare:conv2d_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�2%
#conv2d_14/kernel/Regularizer/Square�
"conv2d_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_14/kernel/Regularizer/Const�
 conv2d_14/kernel/Regularizer/SumSum'conv2d_14/kernel/Regularizer/Square:y:0+conv2d_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/Sum�
"conv2d_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_14/kernel/Regularizer/mul/x�
 conv2d_14/kernel/Regularizer/mulMul+conv2d_14/kernel/Regularizer/mul/x:output:0)conv2d_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/mul�
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp3sequential_4_dense_8_matmul_readvariableop_resource* 
_output_shapes
:
�Q�*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp�
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
�Q�2#
!dense_8/kernel/Regularizer/Square�
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const�
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum�
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2"
 dense_8/kernel/Regularizer/mul/x�
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul�
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp�
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2#
!dense_9/kernel/Regularizer/Square�
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const�
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum�
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2"
 dense_9/kernel/Regularizer/mul/x�
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mul�
IdentityIdentitydense_9/Sigmoid:y:03^conv2d_12/kernel/Regularizer/Square/ReadVariableOp3^conv2d_13/kernel/Regularizer/Square/ReadVariableOp3^conv2d_14/kernel/Regularizer/Square/ReadVariableOp1^dense_8/kernel/Regularizer/Square/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp1^dense_9/kernel/Regularizer/Square/ReadVariableOpC^sequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOpE^sequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1E^sequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOpG^sequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp_12^sequential_4/batch_normalization_6/ReadVariableOp4^sequential_4/batch_normalization_6/ReadVariableOp_14^sequential_4/batch_normalization_6/ReadVariableOp_24^sequential_4/batch_normalization_6/ReadVariableOp_3C^sequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOpE^sequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1E^sequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOpG^sequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp_12^sequential_4/batch_normalization_7/ReadVariableOp4^sequential_4/batch_normalization_7/ReadVariableOp_14^sequential_4/batch_normalization_7/ReadVariableOp_24^sequential_4/batch_normalization_7/ReadVariableOp_3C^sequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOpE^sequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1E^sequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOpG^sequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp_12^sequential_4/batch_normalization_8/ReadVariableOp4^sequential_4/batch_normalization_8/ReadVariableOp_14^sequential_4/batch_normalization_8/ReadVariableOp_24^sequential_4/batch_normalization_8/ReadVariableOp_3.^sequential_4/conv2d_12/BiasAdd/ReadVariableOp0^sequential_4/conv2d_12/BiasAdd_1/ReadVariableOp-^sequential_4/conv2d_12/Conv2D/ReadVariableOp/^sequential_4/conv2d_12/Conv2D_1/ReadVariableOp.^sequential_4/conv2d_13/BiasAdd/ReadVariableOp0^sequential_4/conv2d_13/BiasAdd_1/ReadVariableOp-^sequential_4/conv2d_13/Conv2D/ReadVariableOp/^sequential_4/conv2d_13/Conv2D_1/ReadVariableOp.^sequential_4/conv2d_14/BiasAdd/ReadVariableOp0^sequential_4/conv2d_14/BiasAdd_1/ReadVariableOp-^sequential_4/conv2d_14/Conv2D/ReadVariableOp/^sequential_4/conv2d_14/Conv2D_1/ReadVariableOp,^sequential_4/dense_8/BiasAdd/ReadVariableOp.^sequential_4/dense_8/BiasAdd_1/ReadVariableOp+^sequential_4/dense_8/MatMul/ReadVariableOp-^sequential_4/dense_8/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:���������ii:���������ii: : : : : : : : : : : : : : : : : : : : : : 2h
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2h
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2h
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp2�
Bsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOpBsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp2�
Dsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1Dsequential_4/batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12�
Dsequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOpDsequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp2�
Fsequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp_1Fsequential_4/batch_normalization_6/FusedBatchNormV3_1/ReadVariableOp_12f
1sequential_4/batch_normalization_6/ReadVariableOp1sequential_4/batch_normalization_6/ReadVariableOp2j
3sequential_4/batch_normalization_6/ReadVariableOp_13sequential_4/batch_normalization_6/ReadVariableOp_12j
3sequential_4/batch_normalization_6/ReadVariableOp_23sequential_4/batch_normalization_6/ReadVariableOp_22j
3sequential_4/batch_normalization_6/ReadVariableOp_33sequential_4/batch_normalization_6/ReadVariableOp_32�
Bsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOpBsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp2�
Dsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1Dsequential_4/batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12�
Dsequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOpDsequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp2�
Fsequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp_1Fsequential_4/batch_normalization_7/FusedBatchNormV3_1/ReadVariableOp_12f
1sequential_4/batch_normalization_7/ReadVariableOp1sequential_4/batch_normalization_7/ReadVariableOp2j
3sequential_4/batch_normalization_7/ReadVariableOp_13sequential_4/batch_normalization_7/ReadVariableOp_12j
3sequential_4/batch_normalization_7/ReadVariableOp_23sequential_4/batch_normalization_7/ReadVariableOp_22j
3sequential_4/batch_normalization_7/ReadVariableOp_33sequential_4/batch_normalization_7/ReadVariableOp_32�
Bsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOpBsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp2�
Dsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1Dsequential_4/batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12�
Dsequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOpDsequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp2�
Fsequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp_1Fsequential_4/batch_normalization_8/FusedBatchNormV3_1/ReadVariableOp_12f
1sequential_4/batch_normalization_8/ReadVariableOp1sequential_4/batch_normalization_8/ReadVariableOp2j
3sequential_4/batch_normalization_8/ReadVariableOp_13sequential_4/batch_normalization_8/ReadVariableOp_12j
3sequential_4/batch_normalization_8/ReadVariableOp_23sequential_4/batch_normalization_8/ReadVariableOp_22j
3sequential_4/batch_normalization_8/ReadVariableOp_33sequential_4/batch_normalization_8/ReadVariableOp_32^
-sequential_4/conv2d_12/BiasAdd/ReadVariableOp-sequential_4/conv2d_12/BiasAdd/ReadVariableOp2b
/sequential_4/conv2d_12/BiasAdd_1/ReadVariableOp/sequential_4/conv2d_12/BiasAdd_1/ReadVariableOp2\
,sequential_4/conv2d_12/Conv2D/ReadVariableOp,sequential_4/conv2d_12/Conv2D/ReadVariableOp2`
.sequential_4/conv2d_12/Conv2D_1/ReadVariableOp.sequential_4/conv2d_12/Conv2D_1/ReadVariableOp2^
-sequential_4/conv2d_13/BiasAdd/ReadVariableOp-sequential_4/conv2d_13/BiasAdd/ReadVariableOp2b
/sequential_4/conv2d_13/BiasAdd_1/ReadVariableOp/sequential_4/conv2d_13/BiasAdd_1/ReadVariableOp2\
,sequential_4/conv2d_13/Conv2D/ReadVariableOp,sequential_4/conv2d_13/Conv2D/ReadVariableOp2`
.sequential_4/conv2d_13/Conv2D_1/ReadVariableOp.sequential_4/conv2d_13/Conv2D_1/ReadVariableOp2^
-sequential_4/conv2d_14/BiasAdd/ReadVariableOp-sequential_4/conv2d_14/BiasAdd/ReadVariableOp2b
/sequential_4/conv2d_14/BiasAdd_1/ReadVariableOp/sequential_4/conv2d_14/BiasAdd_1/ReadVariableOp2\
,sequential_4/conv2d_14/Conv2D/ReadVariableOp,sequential_4/conv2d_14/Conv2D/ReadVariableOp2`
.sequential_4/conv2d_14/Conv2D_1/ReadVariableOp.sequential_4/conv2d_14/Conv2D_1/ReadVariableOp2Z
+sequential_4/dense_8/BiasAdd/ReadVariableOp+sequential_4/dense_8/BiasAdd/ReadVariableOp2^
-sequential_4/dense_8/BiasAdd_1/ReadVariableOp-sequential_4/dense_8/BiasAdd_1/ReadVariableOp2X
*sequential_4/dense_8/MatMul/ReadVariableOp*sequential_4/dense_8/MatMul/ReadVariableOp2\
,sequential_4/dense_8/MatMul_1/ReadVariableOp,sequential_4/dense_8/MatMul_1/ReadVariableOp:Y U
/
_output_shapes
:���������ii
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:���������ii
"
_user_specified_name
inputs/1
�
�
F__inference_conv2d_13_layer_call_and_return_conditional_losses_3290165

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������..@*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������..@2	
BiasAdd�
2conv2d_13/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype024
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_13/kernel/Regularizer/SquareSquare:conv2d_13/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_13/kernel/Regularizer/Square�
"conv2d_13/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_13/kernel/Regularizer/Const�
 conv2d_13/kernel/Regularizer/SumSum'conv2d_13/kernel/Regularizer/Square:y:0+conv2d_13/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/Sum�
"conv2d_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_13/kernel/Regularizer/mul/x�
 conv2d_13/kernel/Regularizer/mulMul+conv2d_13/kernel/Regularizer/mul/x:output:0)conv2d_13/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/mul�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_13/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:���������..@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������22 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2conv2d_13/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������22 
 
_user_specified_nameinputs
�
�
.__inference_sequential_4_layer_call_fn_3290861
conv2d_12_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:
�Q�

unknown_18:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
 *(
_output_shapes
:����������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_32907732
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������ii: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������ii
)
_user_specified_nameconv2d_12_input
�
�
__inference_loss_fn_3_3293364V
;conv2d_14_kernel_regularizer_square_readvariableop_resource:@�
identity��2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�
2conv2d_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;conv2d_14_kernel_regularizer_square_readvariableop_resource*'
_output_shapes
:@�*
dtype024
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_14/kernel/Regularizer/SquareSquare:conv2d_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�2%
#conv2d_14/kernel/Regularizer/Square�
"conv2d_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_14/kernel/Regularizer/Const�
 conv2d_14/kernel/Regularizer/SumSum'conv2d_14/kernel/Regularizer/Square:y:0+conv2d_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/Sum�
"conv2d_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_14/kernel/Regularizer/mul/x�
 conv2d_14/kernel/Regularizer/mulMul+conv2d_14/kernel/Regularizer/mul/x:output:0)conv2d_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/mul�
IdentityIdentity$conv2d_14/kernel/Regularizer/mul:z:03^conv2d_14/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2conv2d_14/kernel/Regularizer/Square/ReadVariableOp
�
e
,__inference_dropout_14_layer_call_fn_3293288

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_14_layer_call_and_return_conditional_losses_32904122
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:���������		�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������		�22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������		�
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_3290188

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������..@:@:@:@:@:*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������..@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������..@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������..@
 
_user_specified_nameinputs
�
�
__inference_loss_fn_2_3293353U
;conv2d_13_kernel_regularizer_square_readvariableop_resource: @
identity��2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�
2conv2d_13/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;conv2d_13_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
: @*
dtype024
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_13/kernel/Regularizer/SquareSquare:conv2d_13/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_13/kernel/Regularizer/Square�
"conv2d_13/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_13/kernel/Regularizer/Const�
 conv2d_13/kernel/Regularizer/SumSum'conv2d_13/kernel/Regularizer/Square:y:0+conv2d_13/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/Sum�
"conv2d_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_13/kernel/Regularizer/mul/x�
 conv2d_13/kernel/Regularizer/mulMul+conv2d_13/kernel/Regularizer/mul/x:output:0)conv2d_13/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/mul�
IdentityIdentity$conv2d_13/kernel/Regularizer/mul:z:03^conv2d_13/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2conv2d_13/kernel/Regularizer/Square/ReadVariableOp
�U
�

D__inference_model_4_layer_call_and_return_conditional_losses_3291165

inputs
inputs_1.
sequential_4_3291040: "
sequential_4_3291042: "
sequential_4_3291044: "
sequential_4_3291046: "
sequential_4_3291048: "
sequential_4_3291050: .
sequential_4_3291052: @"
sequential_4_3291054:@"
sequential_4_3291056:@"
sequential_4_3291058:@"
sequential_4_3291060:@"
sequential_4_3291062:@/
sequential_4_3291064:@�#
sequential_4_3291066:	�#
sequential_4_3291068:	�#
sequential_4_3291070:	�#
sequential_4_3291072:	�#
sequential_4_3291074:	�(
sequential_4_3291076:
�Q�#
sequential_4_3291078:	�"
dense_9_3291129:	�
dense_9_3291131:
identity��2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�0dense_8/kernel/Regularizer/Square/ReadVariableOp�dense_9/StatefulPartitionedCall�0dense_9/kernel/Regularizer/Square/ReadVariableOp�$sequential_4/StatefulPartitionedCall�&sequential_4/StatefulPartitionedCall_1�
$sequential_4/StatefulPartitionedCallStatefulPartitionedCallinputssequential_4_3291040sequential_4_3291042sequential_4_3291044sequential_4_3291046sequential_4_3291048sequential_4_3291050sequential_4_3291052sequential_4_3291054sequential_4_3291056sequential_4_3291058sequential_4_3291060sequential_4_3291062sequential_4_3291064sequential_4_3291066sequential_4_3291068sequential_4_3291070sequential_4_3291072sequential_4_3291074sequential_4_3291076sequential_4_3291078* 
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_32903332&
$sequential_4/StatefulPartitionedCall�
&sequential_4/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1sequential_4_3291040sequential_4_3291042sequential_4_3291044sequential_4_3291046sequential_4_3291048sequential_4_3291050sequential_4_3291052sequential_4_3291054sequential_4_3291056sequential_4_3291058sequential_4_3291060sequential_4_3291062sequential_4_3291064sequential_4_3291066sequential_4_3291068sequential_4_3291070sequential_4_3291072sequential_4_3291074sequential_4_3291076sequential_4_3291078* 
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_32903332(
&sequential_4/StatefulPartitionedCall_1�
lambda_4/PartitionedCallPartitionedCall-sequential_4/StatefulPartitionedCall:output:0/sequential_4/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_lambda_4_layer_call_and_return_conditional_losses_32911092
lambda_4/PartitionedCall�
dense_9/StatefulPartitionedCallStatefulPartitionedCall!lambda_4/PartitionedCall:output:0dense_9_3291129dense_9_3291131*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_32911282!
dense_9/StatefulPartitionedCall�
2conv2d_12/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_4_3291040*&
_output_shapes
: *
dtype024
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_12/kernel/Regularizer/SquareSquare:conv2d_12/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_12/kernel/Regularizer/Square�
"conv2d_12/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_12/kernel/Regularizer/Const�
 conv2d_12/kernel/Regularizer/SumSum'conv2d_12/kernel/Regularizer/Square:y:0+conv2d_12/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/Sum�
"conv2d_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_12/kernel/Regularizer/mul/x�
 conv2d_12/kernel/Regularizer/mulMul+conv2d_12/kernel/Regularizer/mul/x:output:0)conv2d_12/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/mul�
2conv2d_13/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_4_3291052*&
_output_shapes
: @*
dtype024
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_13/kernel/Regularizer/SquareSquare:conv2d_13/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_13/kernel/Regularizer/Square�
"conv2d_13/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_13/kernel/Regularizer/Const�
 conv2d_13/kernel/Regularizer/SumSum'conv2d_13/kernel/Regularizer/Square:y:0+conv2d_13/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/Sum�
"conv2d_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_13/kernel/Regularizer/mul/x�
 conv2d_13/kernel/Regularizer/mulMul+conv2d_13/kernel/Regularizer/mul/x:output:0)conv2d_13/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/mul�
2conv2d_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_4_3291064*'
_output_shapes
:@�*
dtype024
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_14/kernel/Regularizer/SquareSquare:conv2d_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�2%
#conv2d_14/kernel/Regularizer/Square�
"conv2d_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_14/kernel/Regularizer/Const�
 conv2d_14/kernel/Regularizer/SumSum'conv2d_14/kernel/Regularizer/Square:y:0+conv2d_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/Sum�
"conv2d_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_14/kernel/Regularizer/mul/x�
 conv2d_14/kernel/Regularizer/mulMul+conv2d_14/kernel/Regularizer/mul/x:output:0)conv2d_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/mul�
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsequential_4_3291076* 
_output_shapes
:
�Q�*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp�
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
�Q�2#
!dense_8/kernel/Regularizer/Square�
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const�
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum�
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2"
 dense_8/kernel/Regularizer/mul/x�
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul�
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_9_3291129*
_output_shapes
:	�*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp�
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2#
!dense_9/kernel/Regularizer/Square�
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const�
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum�
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2"
 dense_9/kernel/Regularizer/mul/x�
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mul�
IdentityIdentity(dense_9/StatefulPartitionedCall:output:03^conv2d_12/kernel/Regularizer/Square/ReadVariableOp3^conv2d_13/kernel/Regularizer/Square/ReadVariableOp3^conv2d_14/kernel/Regularizer/Square/ReadVariableOp1^dense_8/kernel/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall1^dense_9/kernel/Regularizer/Square/ReadVariableOp%^sequential_4/StatefulPartitionedCall'^sequential_4/StatefulPartitionedCall_1*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:���������ii:���������ii: : : : : : : : : : : : : : : : : : : : : : 2h
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2h
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2h
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall2P
&sequential_4/StatefulPartitionedCall_1&sequential_4/StatefulPartitionedCall_1:W S
/
_output_shapes
:���������ii
 
_user_specified_nameinputs:WS
/
_output_shapes
:���������ii
 
_user_specified_nameinputs
�
�
F__inference_conv2d_12_layer_call_and_return_conditional_losses_3292734

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������ee *
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������ee 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������ee 2
Relu�
2conv2d_12/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype024
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_12/kernel/Regularizer/SquareSquare:conv2d_12/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_12/kernel/Regularizer/Square�
"conv2d_12/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_12/kernel/Regularizer/Const�
 conv2d_12/kernel/Regularizer/SumSum'conv2d_12/kernel/Regularizer/Square:y:0+conv2d_12/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/Sum�
"conv2d_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_12/kernel/Regularizer/mul/x�
 conv2d_12/kernel/Regularizer/mulMul+conv2d_12/kernel/Regularizer/mul/x:output:0)conv2d_12/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/mul�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_12/kernel/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:���������ee 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������ii: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2conv2d_12/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������ii
 
_user_specified_nameinputs
�
V
*__inference_lambda_4_layer_call_fn_3292662
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_lambda_4_layer_call_and_return_conditional_losses_32911092
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
�
7__inference_batch_normalization_6_layer_call_fn_3292828

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_32896852
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+��������������������������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
f
J__inference_activation_14_layer_call_and_return_conditional_losses_3290267

inputs
identityW
ReluReluinputs*
T0*0
_output_shapes
:����������2
Reluo
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
K
/__inference_activation_13_layer_call_fn_3293069

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������..@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_activation_13_layer_call_and_return_conditional_losses_32902032
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������..@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������..@:W S
/
_output_shapes
:���������..@
 
_user_specified_nameinputs
��
�
I__inference_sequential_4_layer_call_and_return_conditional_losses_3292552

inputsB
(conv2d_12_conv2d_readvariableop_resource: 7
)conv2d_12_biasadd_readvariableop_resource: ;
-batch_normalization_6_readvariableop_resource: =
/batch_normalization_6_readvariableop_1_resource: L
>batch_normalization_6_fusedbatchnormv3_readvariableop_resource: N
@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource: B
(conv2d_13_conv2d_readvariableop_resource: @7
)conv2d_13_biasadd_readvariableop_resource:@;
-batch_normalization_7_readvariableop_resource:@=
/batch_normalization_7_readvariableop_1_resource:@L
>batch_normalization_7_fusedbatchnormv3_readvariableop_resource:@N
@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource:@C
(conv2d_14_conv2d_readvariableop_resource:@�8
)conv2d_14_biasadd_readvariableop_resource:	�<
-batch_normalization_8_readvariableop_resource:	�>
/batch_normalization_8_readvariableop_1_resource:	�M
>batch_normalization_8_fusedbatchnormv3_readvariableop_resource:	�O
@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource:	�:
&dense_8_matmul_readvariableop_resource:
�Q�6
'dense_8_biasadd_readvariableop_resource:	�
identity��$batch_normalization_6/AssignNewValue�&batch_normalization_6/AssignNewValue_1�5batch_normalization_6/FusedBatchNormV3/ReadVariableOp�7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1�$batch_normalization_6/ReadVariableOp�&batch_normalization_6/ReadVariableOp_1�$batch_normalization_7/AssignNewValue�&batch_normalization_7/AssignNewValue_1�5batch_normalization_7/FusedBatchNormV3/ReadVariableOp�7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1�$batch_normalization_7/ReadVariableOp�&batch_normalization_7/ReadVariableOp_1�$batch_normalization_8/AssignNewValue�&batch_normalization_8/AssignNewValue_1�5batch_normalization_8/FusedBatchNormV3/ReadVariableOp�7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1�$batch_normalization_8/ReadVariableOp�&batch_normalization_8/ReadVariableOp_1� conv2d_12/BiasAdd/ReadVariableOp�conv2d_12/Conv2D/ReadVariableOp�2conv2d_12/kernel/Regularizer/Square/ReadVariableOp� conv2d_13/BiasAdd/ReadVariableOp�conv2d_13/Conv2D/ReadVariableOp�2conv2d_13/kernel/Regularizer/Square/ReadVariableOp� conv2d_14/BiasAdd/ReadVariableOp�conv2d_14/Conv2D/ReadVariableOp�2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�dense_8/BiasAdd/ReadVariableOp�dense_8/MatMul/ReadVariableOp�0dense_8/kernel/Regularizer/Square/ReadVariableOp�
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_12/Conv2D/ReadVariableOp�
conv2d_12/Conv2DConv2Dinputs'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������ee *
paddingVALID*
strides
2
conv2d_12/Conv2D�
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_12/BiasAdd/ReadVariableOp�
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������ee 2
conv2d_12/BiasAdd~
conv2d_12/ReluReluconv2d_12/BiasAdd:output:0*
T0*/
_output_shapes
:���������ee 2
conv2d_12/Relu�
$batch_normalization_6/ReadVariableOpReadVariableOp-batch_normalization_6_readvariableop_resource*
_output_shapes
: *
dtype02&
$batch_normalization_6/ReadVariableOp�
&batch_normalization_6/ReadVariableOp_1ReadVariableOp/batch_normalization_6_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&batch_normalization_6/ReadVariableOp_1�
5batch_normalization_6/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype027
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp�
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype029
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1�
&batch_normalization_6/FusedBatchNormV3FusedBatchNormV3conv2d_12/Relu:activations:0,batch_normalization_6/ReadVariableOp:value:0.batch_normalization_6/ReadVariableOp_1:value:0=batch_normalization_6/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������ee : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<2(
&batch_normalization_6/FusedBatchNormV3�
$batch_normalization_6/AssignNewValueAssignVariableOp>batch_normalization_6_fusedbatchnormv3_readvariableop_resource3batch_normalization_6/FusedBatchNormV3:batch_mean:06^batch_normalization_6/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_6/AssignNewValue�
&batch_normalization_6/AssignNewValue_1AssignVariableOp@batch_normalization_6_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_6/FusedBatchNormV3:batch_variance:08^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_6/AssignNewValue_1�
activation_12/ReluRelu*batch_normalization_6/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������ee 2
activation_12/Relu�
max_pooling2d_12/MaxPoolMaxPool activation_12/Relu:activations:0*/
_output_shapes
:���������22 *
ksize
*
paddingVALID*
strides
2
max_pooling2d_12/MaxPooly
dropout_12/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_12/dropout/Const�
dropout_12/dropout/MulMul!max_pooling2d_12/MaxPool:output:0!dropout_12/dropout/Const:output:0*
T0*/
_output_shapes
:���������22 2
dropout_12/dropout/Mul�
dropout_12/dropout/ShapeShape!max_pooling2d_12/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_12/dropout/Shape�
/dropout_12/dropout/random_uniform/RandomUniformRandomUniform!dropout_12/dropout/Shape:output:0*
T0*/
_output_shapes
:���������22 *
dtype021
/dropout_12/dropout/random_uniform/RandomUniform�
!dropout_12/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2#
!dropout_12/dropout/GreaterEqual/y�
dropout_12/dropout/GreaterEqualGreaterEqual8dropout_12/dropout/random_uniform/RandomUniform:output:0*dropout_12/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������22 2!
dropout_12/dropout/GreaterEqual�
dropout_12/dropout/CastCast#dropout_12/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������22 2
dropout_12/dropout/Cast�
dropout_12/dropout/Mul_1Muldropout_12/dropout/Mul:z:0dropout_12/dropout/Cast:y:0*
T0*/
_output_shapes
:���������22 2
dropout_12/dropout/Mul_1�
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_13/Conv2D/ReadVariableOp�
conv2d_13/Conv2DConv2Ddropout_12/dropout/Mul_1:z:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������..@*
paddingVALID*
strides
2
conv2d_13/Conv2D�
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_13/BiasAdd/ReadVariableOp�
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������..@2
conv2d_13/BiasAdd�
$batch_normalization_7/ReadVariableOpReadVariableOp-batch_normalization_7_readvariableop_resource*
_output_shapes
:@*
dtype02&
$batch_normalization_7/ReadVariableOp�
&batch_normalization_7/ReadVariableOp_1ReadVariableOp/batch_normalization_7_readvariableop_1_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_7/ReadVariableOp_1�
5batch_normalization_7/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype027
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp�
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype029
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1�
&batch_normalization_7/FusedBatchNormV3FusedBatchNormV3conv2d_13/BiasAdd:output:0,batch_normalization_7/ReadVariableOp:value:0.batch_normalization_7/ReadVariableOp_1:value:0=batch_normalization_7/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������..@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<2(
&batch_normalization_7/FusedBatchNormV3�
$batch_normalization_7/AssignNewValueAssignVariableOp>batch_normalization_7_fusedbatchnormv3_readvariableop_resource3batch_normalization_7/FusedBatchNormV3:batch_mean:06^batch_normalization_7/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_7/AssignNewValue�
&batch_normalization_7/AssignNewValue_1AssignVariableOp@batch_normalization_7_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_7/FusedBatchNormV3:batch_variance:08^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_7/AssignNewValue_1�
activation_13/ReluRelu*batch_normalization_7/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������..@2
activation_13/Relu�
max_pooling2d_13/MaxPoolMaxPool activation_13/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_13/MaxPooly
dropout_13/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_13/dropout/Const�
dropout_13/dropout/MulMul!max_pooling2d_13/MaxPool:output:0!dropout_13/dropout/Const:output:0*
T0*/
_output_shapes
:���������@2
dropout_13/dropout/Mul�
dropout_13/dropout/ShapeShape!max_pooling2d_13/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_13/dropout/Shape�
/dropout_13/dropout/random_uniform/RandomUniformRandomUniform!dropout_13/dropout/Shape:output:0*
T0*/
_output_shapes
:���������@*
dtype021
/dropout_13/dropout/random_uniform/RandomUniform�
!dropout_13/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2#
!dropout_13/dropout/GreaterEqual/y�
dropout_13/dropout/GreaterEqualGreaterEqual8dropout_13/dropout/random_uniform/RandomUniform:output:0*dropout_13/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@2!
dropout_13/dropout/GreaterEqual�
dropout_13/dropout/CastCast#dropout_13/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������@2
dropout_13/dropout/Cast�
dropout_13/dropout/Mul_1Muldropout_13/dropout/Mul:z:0dropout_13/dropout/Cast:y:0*
T0*/
_output_shapes
:���������@2
dropout_13/dropout/Mul_1�
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype02!
conv2d_14/Conv2D/ReadVariableOp�
conv2d_14/Conv2DConv2Ddropout_13/dropout/Mul_1:z:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
2
conv2d_14/Conv2D�
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02"
 conv2d_14/BiasAdd/ReadVariableOp�
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
conv2d_14/BiasAdd�
$batch_normalization_8/ReadVariableOpReadVariableOp-batch_normalization_8_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$batch_normalization_8/ReadVariableOp�
&batch_normalization_8/ReadVariableOp_1ReadVariableOp/batch_normalization_8_readvariableop_1_resource*
_output_shapes	
:�*
dtype02(
&batch_normalization_8/ReadVariableOp_1�
5batch_normalization_8/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype027
5batch_normalization_8/FusedBatchNormV3/ReadVariableOp�
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype029
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1�
&batch_normalization_8/FusedBatchNormV3FusedBatchNormV3conv2d_14/BiasAdd:output:0,batch_normalization_8/ReadVariableOp:value:0.batch_normalization_8/ReadVariableOp_1:value:0=batch_normalization_8/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<2(
&batch_normalization_8/FusedBatchNormV3�
$batch_normalization_8/AssignNewValueAssignVariableOp>batch_normalization_8_fusedbatchnormv3_readvariableop_resource3batch_normalization_8/FusedBatchNormV3:batch_mean:06^batch_normalization_8/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_8/AssignNewValue�
&batch_normalization_8/AssignNewValue_1AssignVariableOp@batch_normalization_8_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_8/FusedBatchNormV3:batch_variance:08^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_8/AssignNewValue_1�
activation_14/ReluRelu*batch_normalization_8/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:����������2
activation_14/Relu�
max_pooling2d_14/MaxPoolMaxPool activation_14/Relu:activations:0*0
_output_shapes
:���������		�*
ksize
*
paddingVALID*
strides
2
max_pooling2d_14/MaxPooly
dropout_14/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_14/dropout/Const�
dropout_14/dropout/MulMul!max_pooling2d_14/MaxPool:output:0!dropout_14/dropout/Const:output:0*
T0*0
_output_shapes
:���������		�2
dropout_14/dropout/Mul�
dropout_14/dropout/ShapeShape!max_pooling2d_14/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_14/dropout/Shape�
/dropout_14/dropout/random_uniform/RandomUniformRandomUniform!dropout_14/dropout/Shape:output:0*
T0*0
_output_shapes
:���������		�*
dtype021
/dropout_14/dropout/random_uniform/RandomUniform�
!dropout_14/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2#
!dropout_14/dropout/GreaterEqual/y�
dropout_14/dropout/GreaterEqualGreaterEqual8dropout_14/dropout/random_uniform/RandomUniform:output:0*dropout_14/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:���������		�2!
dropout_14/dropout/GreaterEqual�
dropout_14/dropout/CastCast#dropout_14/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:���������		�2
dropout_14/dropout/Cast�
dropout_14/dropout/Mul_1Muldropout_14/dropout/Mul:z:0dropout_14/dropout/Cast:y:0*
T0*0
_output_shapes
:���������		�2
dropout_14/dropout/Mul_1s
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����(  2
flatten_4/Const�
flatten_4/ReshapeReshapedropout_14/dropout/Mul_1:z:0flatten_4/Const:output:0*
T0*(
_output_shapes
:����������Q2
flatten_4/Reshape�
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource* 
_output_shapes
:
�Q�*
dtype02
dense_8/MatMul/ReadVariableOp�
dense_8/MatMulMatMulflatten_4/Reshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_8/MatMul�
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
dense_8/BiasAdd/ReadVariableOp�
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_8/BiasAddz
dense_8/SigmoidSigmoiddense_8/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_8/Sigmoid�
2conv2d_12/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype024
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_12/kernel/Regularizer/SquareSquare:conv2d_12/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_12/kernel/Regularizer/Square�
"conv2d_12/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_12/kernel/Regularizer/Const�
 conv2d_12/kernel/Regularizer/SumSum'conv2d_12/kernel/Regularizer/Square:y:0+conv2d_12/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/Sum�
"conv2d_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_12/kernel/Regularizer/mul/x�
 conv2d_12/kernel/Regularizer/mulMul+conv2d_12/kernel/Regularizer/mul/x:output:0)conv2d_12/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/mul�
2conv2d_13/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype024
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_13/kernel/Regularizer/SquareSquare:conv2d_13/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_13/kernel/Regularizer/Square�
"conv2d_13/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_13/kernel/Regularizer/Const�
 conv2d_13/kernel/Regularizer/SumSum'conv2d_13/kernel/Regularizer/Square:y:0+conv2d_13/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/Sum�
"conv2d_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_13/kernel/Regularizer/mul/x�
 conv2d_13/kernel/Regularizer/mulMul+conv2d_13/kernel/Regularizer/mul/x:output:0)conv2d_13/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/mul�
2conv2d_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype024
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_14/kernel/Regularizer/SquareSquare:conv2d_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�2%
#conv2d_14/kernel/Regularizer/Square�
"conv2d_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_14/kernel/Regularizer/Const�
 conv2d_14/kernel/Regularizer/SumSum'conv2d_14/kernel/Regularizer/Square:y:0+conv2d_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/Sum�
"conv2d_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_14/kernel/Regularizer/mul/x�
 conv2d_14/kernel/Regularizer/mulMul+conv2d_14/kernel/Regularizer/mul/x:output:0)conv2d_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/mul�
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource* 
_output_shapes
:
�Q�*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp�
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
�Q�2#
!dense_8/kernel/Regularizer/Square�
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const�
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum�
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2"
 dense_8/kernel/Regularizer/mul/x�
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul�
IdentityIdentitydense_8/Sigmoid:y:0%^batch_normalization_6/AssignNewValue'^batch_normalization_6/AssignNewValue_16^batch_normalization_6/FusedBatchNormV3/ReadVariableOp8^batch_normalization_6/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_6/ReadVariableOp'^batch_normalization_6/ReadVariableOp_1%^batch_normalization_7/AssignNewValue'^batch_normalization_7/AssignNewValue_16^batch_normalization_7/FusedBatchNormV3/ReadVariableOp8^batch_normalization_7/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_7/ReadVariableOp'^batch_normalization_7/ReadVariableOp_1%^batch_normalization_8/AssignNewValue'^batch_normalization_8/AssignNewValue_16^batch_normalization_8/FusedBatchNormV3/ReadVariableOp8^batch_normalization_8/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_8/ReadVariableOp'^batch_normalization_8/ReadVariableOp_1!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp3^conv2d_12/kernel/Regularizer/Square/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp3^conv2d_13/kernel/Regularizer/Square/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp3^conv2d_14/kernel/Regularizer/Square/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp1^dense_8/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������ii: : : : : : : : : : : : : : : : : : : : 2L
$batch_normalization_6/AssignNewValue$batch_normalization_6/AssignNewValue2P
&batch_normalization_6/AssignNewValue_1&batch_normalization_6/AssignNewValue_12n
5batch_normalization_6/FusedBatchNormV3/ReadVariableOp5batch_normalization_6/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_6/FusedBatchNormV3/ReadVariableOp_17batch_normalization_6/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_6/ReadVariableOp$batch_normalization_6/ReadVariableOp2P
&batch_normalization_6/ReadVariableOp_1&batch_normalization_6/ReadVariableOp_12L
$batch_normalization_7/AssignNewValue$batch_normalization_7/AssignNewValue2P
&batch_normalization_7/AssignNewValue_1&batch_normalization_7/AssignNewValue_12n
5batch_normalization_7/FusedBatchNormV3/ReadVariableOp5batch_normalization_7/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_7/FusedBatchNormV3/ReadVariableOp_17batch_normalization_7/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_7/ReadVariableOp$batch_normalization_7/ReadVariableOp2P
&batch_normalization_7/ReadVariableOp_1&batch_normalization_7/ReadVariableOp_12L
$batch_normalization_8/AssignNewValue$batch_normalization_8/AssignNewValue2P
&batch_normalization_8/AssignNewValue_1&batch_normalization_8/AssignNewValue_12n
5batch_normalization_8/FusedBatchNormV3/ReadVariableOp5batch_normalization_8/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_8/FusedBatchNormV3/ReadVariableOp_17batch_normalization_8/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_8/ReadVariableOp$batch_normalization_8/ReadVariableOp2P
&batch_normalization_8/ReadVariableOp_1&batch_normalization_8/ReadVariableOp_12D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2h
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2h
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2h
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:���������ii
 
_user_specified_nameinputs
�
e
G__inference_dropout_14_layer_call_and_return_conditional_losses_3293266

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:���������		�2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:���������		�2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������		�:X T
0
_output_shapes
:���������		�
 
_user_specified_nameinputs
�
�
.__inference_sequential_4_layer_call_fn_3292597

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:
�Q�

unknown_18:	�
identity��StatefulPartitionedCall�
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
 *(
_output_shapes
:����������*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_32903332
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������ii: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������ii
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_3293181

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
i
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_3290071

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
.__inference_sequential_4_layer_call_fn_3292642

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:
�Q�

unknown_18:	�
identity��StatefulPartitionedCall�
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
 *(
_output_shapes
:����������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_32907732
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������ii: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������ii
 
_user_specified_nameinputs
�
K
/__inference_activation_12_layer_call_fn_3292877

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������ee * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_activation_12_layer_call_and_return_conditional_losses_32901392
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������ee 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������ee :W S
/
_output_shapes
:���������ee 
 
_user_specified_nameinputs
�
e
G__inference_dropout_12_layer_call_and_return_conditional_losses_3290147

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:���������22 2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������22 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������22 :W S
/
_output_shapes
:���������22 
 
_user_specified_nameinputs
�
e
,__inference_dropout_13_layer_call_fn_3293096

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_13_layer_call_and_return_conditional_losses_32904952
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_3293007

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������..@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������..@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������..@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������..@
 
_user_specified_nameinputs
�
�
7__inference_batch_normalization_6_layer_call_fn_3292867

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������ee *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_32906202
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������ee 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������ee : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������ee 
 
_user_specified_nameinputs
�
�
7__inference_batch_normalization_8_layer_call_fn_3293212

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_32899612
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_1_3293342U
;conv2d_12_kernel_regularizer_square_readvariableop_resource: 
identity��2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�
2conv2d_12/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;conv2d_12_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
: *
dtype024
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_12/kernel/Regularizer/SquareSquare:conv2d_12/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_12/kernel/Regularizer/Square�
"conv2d_12/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_12/kernel/Regularizer/Const�
 conv2d_12/kernel/Regularizer/SumSum'conv2d_12/kernel/Regularizer/Square:y:0+conv2d_12/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/Sum�
"conv2d_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_12/kernel/Regularizer/mul/x�
 conv2d_12/kernel/Regularizer/mulMul+conv2d_12/kernel/Regularizer/mul/x:output:0)conv2d_12/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/mul�
IdentityIdentity$conv2d_12/kernel/Regularizer/mul:z:03^conv2d_12/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2conv2d_12/kernel/Regularizer/Square/ReadVariableOp
�
q
E__inference_lambda_4_layer_call_and_return_conditional_losses_3292649
inputs_0
inputs_1
identityX
subSubinputs_0inputs_1*
T0*(
_output_shapes
:����������2
subM
AbsAbssub:z:0*
T0*(
_output_shapes
:����������2
Abs\
IdentityIdentityAbs:y:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
�
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_3292797

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������ee : : : : :*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������ee 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������ee : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������ee 
 
_user_specified_nameinputs
�
i
M__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_3289795

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
)__inference_dense_8_layer_call_fn_3293331

inputs
unknown:
�Q�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_32903022
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������Q: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������Q
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_3289867

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�|
�
I__inference_sequential_4_layer_call_and_return_conditional_losses_3291031
conv2d_12_input+
conv2d_12_3290949: 
conv2d_12_3290951: +
batch_normalization_6_3290954: +
batch_normalization_6_3290956: +
batch_normalization_6_3290958: +
batch_normalization_6_3290960: +
conv2d_13_3290966: @
conv2d_13_3290968:@+
batch_normalization_7_3290971:@+
batch_normalization_7_3290973:@+
batch_normalization_7_3290975:@+
batch_normalization_7_3290977:@,
conv2d_14_3290983:@� 
conv2d_14_3290985:	�,
batch_normalization_8_3290988:	�,
batch_normalization_8_3290990:	�,
batch_normalization_8_3290992:	�,
batch_normalization_8_3290994:	�#
dense_8_3291001:
�Q�
dense_8_3291003:	�
identity��-batch_normalization_6/StatefulPartitionedCall�-batch_normalization_7/StatefulPartitionedCall�-batch_normalization_8/StatefulPartitionedCall�!conv2d_12/StatefulPartitionedCall�2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�!conv2d_13/StatefulPartitionedCall�2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�!conv2d_14/StatefulPartitionedCall�2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�dense_8/StatefulPartitionedCall�0dense_8/kernel/Regularizer/Square/ReadVariableOp�"dropout_12/StatefulPartitionedCall�"dropout_13/StatefulPartitionedCall�"dropout_14/StatefulPartitionedCall�
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCallconv2d_12_inputconv2d_12_3290949conv2d_12_3290951*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������ee *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_12_layer_call_and_return_conditional_losses_32901012#
!conv2d_12/StatefulPartitionedCall�
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0batch_normalization_6_3290954batch_normalization_6_3290956batch_normalization_6_3290958batch_normalization_6_3290960*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������ee *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_32906202/
-batch_normalization_6/StatefulPartitionedCall�
activation_12/PartitionedCallPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������ee * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_activation_12_layer_call_and_return_conditional_losses_32901392
activation_12/PartitionedCall�
 max_pooling2d_12/PartitionedCallPartitionedCall&activation_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������22 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_32897952"
 max_pooling2d_12/PartitionedCall�
"dropout_12/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������22 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_12_layer_call_and_return_conditional_losses_32905782$
"dropout_12/StatefulPartitionedCall�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall+dropout_12/StatefulPartitionedCall:output:0conv2d_13_3290966conv2d_13_3290968*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������..@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_13_layer_call_and_return_conditional_losses_32901652#
!conv2d_13/StatefulPartitionedCall�
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0batch_normalization_7_3290971batch_normalization_7_3290973batch_normalization_7_3290975batch_normalization_7_3290977*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������..@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_32905372/
-batch_normalization_7/StatefulPartitionedCall�
activation_13/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������..@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_activation_13_layer_call_and_return_conditional_losses_32902032
activation_13/PartitionedCall�
 max_pooling2d_13/PartitionedCallPartitionedCall&activation_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_32899332"
 max_pooling2d_13/PartitionedCall�
"dropout_13/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0#^dropout_12/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_13_layer_call_and_return_conditional_losses_32904952$
"dropout_13/StatefulPartitionedCall�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall+dropout_13/StatefulPartitionedCall:output:0conv2d_14_3290983conv2d_14_3290985*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_14_layer_call_and_return_conditional_losses_32902292#
!conv2d_14/StatefulPartitionedCall�
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0batch_normalization_8_3290988batch_normalization_8_3290990batch_normalization_8_3290992batch_normalization_8_3290994*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_32904542/
-batch_normalization_8/StatefulPartitionedCall�
activation_14/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_activation_14_layer_call_and_return_conditional_losses_32902672
activation_14/PartitionedCall�
 max_pooling2d_14/PartitionedCallPartitionedCall&activation_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_32900712"
 max_pooling2d_14/PartitionedCall�
"dropout_14/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0#^dropout_13/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������		�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_14_layer_call_and_return_conditional_losses_32904122$
"dropout_14/StatefulPartitionedCall�
flatten_4/PartitionedCallPartitionedCall+dropout_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������Q* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_32902832
flatten_4/PartitionedCall�
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_3291001dense_8_3291003*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_32903022!
dense_8/StatefulPartitionedCall�
2conv2d_12/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_12_3290949*&
_output_shapes
: *
dtype024
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_12/kernel/Regularizer/SquareSquare:conv2d_12/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: 2%
#conv2d_12/kernel/Regularizer/Square�
"conv2d_12/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_12/kernel/Regularizer/Const�
 conv2d_12/kernel/Regularizer/SumSum'conv2d_12/kernel/Regularizer/Square:y:0+conv2d_12/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/Sum�
"conv2d_12/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_12/kernel/Regularizer/mul/x�
 conv2d_12/kernel/Regularizer/mulMul+conv2d_12/kernel/Regularizer/mul/x:output:0)conv2d_12/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_12/kernel/Regularizer/mul�
2conv2d_13/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_13_3290966*&
_output_shapes
: @*
dtype024
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_13/kernel/Regularizer/SquareSquare:conv2d_13/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
: @2%
#conv2d_13/kernel/Regularizer/Square�
"conv2d_13/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_13/kernel/Regularizer/Const�
 conv2d_13/kernel/Regularizer/SumSum'conv2d_13/kernel/Regularizer/Square:y:0+conv2d_13/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/Sum�
"conv2d_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_13/kernel/Regularizer/mul/x�
 conv2d_13/kernel/Regularizer/mulMul+conv2d_13/kernel/Regularizer/mul/x:output:0)conv2d_13/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_13/kernel/Regularizer/mul�
2conv2d_14/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_14_3290983*'
_output_shapes
:@�*
dtype024
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp�
#conv2d_14/kernel/Regularizer/SquareSquare:conv2d_14/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�2%
#conv2d_14/kernel/Regularizer/Square�
"conv2d_14/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"conv2d_14/kernel/Regularizer/Const�
 conv2d_14/kernel/Regularizer/SumSum'conv2d_14/kernel/Regularizer/Square:y:0+conv2d_14/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/Sum�
"conv2d_14/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2$
"conv2d_14/kernel/Regularizer/mul/x�
 conv2d_14/kernel/Regularizer/mulMul+conv2d_14/kernel/Regularizer/mul/x:output:0)conv2d_14/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv2d_14/kernel/Regularizer/mul�
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_8_3291001* 
_output_shapes
:
�Q�*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp�
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
�Q�2#
!dense_8/kernel/Regularizer/Square�
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const�
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum�
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<2"
 dense_8/kernel/Regularizer/mul/x�
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul�
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall"^conv2d_12/StatefulPartitionedCall3^conv2d_12/kernel/Regularizer/Square/ReadVariableOp"^conv2d_13/StatefulPartitionedCall3^conv2d_13/kernel/Regularizer/Square/ReadVariableOp"^conv2d_14/StatefulPartitionedCall3^conv2d_14/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall1^dense_8/kernel/Regularizer/Square/ReadVariableOp#^dropout_12/StatefulPartitionedCall#^dropout_13/StatefulPartitionedCall#^dropout_14/StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������ii: : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2h
2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2conv2d_12/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2h
2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2conv2d_13/kernel/Regularizer/Square/ReadVariableOp2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2h
2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2conv2d_14/kernel/Regularizer/Square/ReadVariableOp2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp2H
"dropout_12/StatefulPartitionedCall"dropout_12/StatefulPartitionedCall2H
"dropout_13/StatefulPartitionedCall"dropout_13/StatefulPartitionedCall2H
"dropout_14/StatefulPartitionedCall"dropout_14/StatefulPartitionedCall:` \
/
_output_shapes
:���������ii
)
_user_specified_nameconv2d_12_input
�
f
G__inference_dropout_13_layer_call_and_return_conditional_losses_3290495

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������@2
dropout/Cast�
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:���������@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
f
J__inference_activation_13_layer_call_and_return_conditional_losses_3293064

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:���������..@2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������..@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������..@:W S
/
_output_shapes
:���������..@
 
_user_specified_nameinputs
�
�
+__inference_conv2d_12_layer_call_fn_3292743

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������ee *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_conv2d_12_layer_call_and_return_conditional_losses_32901012
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������ee 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������ii: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������ii
 
_user_specified_nameinputs
�
�
)__inference_model_4_layer_call_fn_3292243
inputs_0
inputs_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:
�Q�

unknown_18:	�

unknown_19:	�

unknown_20:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_model_4_layer_call_and_return_conditional_losses_32911652
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:���������ii:���������ii: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:���������ii
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:���������ii
"
_user_specified_name
inputs/1
�
�
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_3290252

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
E
input_109
serving_default_input_10:0���������ii
C
input_98
serving_default_input_9:0���������ii;
dense_90
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
ӕ
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
+�&call_and_return_all_conditional_losses
�_default_save_signature
�__call__"��
_tf_keras_network�{"name": "model_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 105, 105, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_9"}, "name": "input_9", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 105, 105, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_10"}, "name": "input_10", "inbound_nodes": []}, {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 105, 105, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_12_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 105, 105, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_12", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_12", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_12", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_13", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_13", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_13", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_14", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_14", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_14", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 256, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "name": "sequential_4", "inbound_nodes": [[["input_9", 0, 0, {}]], [["input_10", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "lambda_4", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAUAAABTAAAAcxYAAAB0AKABfABkARkAfABkAhkAGAChAVMAKQNO6QAAAADp\nAQAAACkC2gFL2gNhYnMpAdoHdGVuc29yc6kAcgYAAAD6Ny90bXAvc2x1cm1fZzA2MDQxNS4xMDQ3\nOTY0L2lweWtlcm5lbF8yOTc3OC82MjIzNzg5NTkucHnaCDxsYW1iZGE+HwAAAPMAAAAA\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda_4", "inbound_nodes": [[["sequential_4", 1, 0, {}], ["sequential_4", 2, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_9", "inbound_nodes": [[["lambda_4", 0, 0, {}]]]}], "input_layers": [["input_9", 0, 0], ["input_10", 0, 0]], "output_layers": [["dense_9", 0, 0]]}, "shared_object_id": 50, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 105, 105, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 105, 105, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 105, 105, 1]}, {"class_name": "TensorShape", "items": [null, 105, 105, 1]}], "is_graph_network": true, "save_spec": [{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 105, 105, 1]}, "float32", "input_9"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 105, 105, 1]}, "float32", "input_10"]}], "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 105, 105, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_9"}, "name": "input_9", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 105, 105, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_10"}, "name": "input_10", "inbound_nodes": [], "shared_object_id": 1}, {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 105, 105, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_12_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 105, 105, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_12", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_12", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_12", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_13", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_13", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_13", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_14", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_14", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_14", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 256, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "name": "sequential_4", "inbound_nodes": [[["input_9", 0, 0, {}]], [["input_10", 0, 0, {}]]], "shared_object_id": 44}, {"class_name": "Lambda", "config": {"name": "lambda_4", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAUAAABTAAAAcxYAAAB0AKABfABkARkAfABkAhkAGAChAVMAKQNO6QAAAADp\nAQAAACkC2gFL2gNhYnMpAdoHdGVuc29yc6kAcgYAAAD6Ny90bXAvc2x1cm1fZzA2MDQxNS4xMDQ3\nOTY0L2lweWtlcm5lbF8yOTc3OC82MjIzNzg5NTkucHnaCDxsYW1iZGE+HwAAAPMAAAAA\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda_4", "inbound_nodes": [[["sequential_4", 1, 0, {}], ["sequential_4", 2, 0, {}]]], "shared_object_id": 45}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 46}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 47}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 48}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_9", "inbound_nodes": [[["lambda_4", 0, 0, {}]]], "shared_object_id": 49}], "input_layers": [["input_9", 0, 0], ["input_10", 0, 0]], "output_layers": [["dense_9", 0, 0]]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 53}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": {"class_name": "ExponentialDecay", "config": {"initial_learning_rate": 0.05, "decay_steps": 4000, "decay_rate": 0.0001, "staircase": false, "name": null}, "shared_object_id": 54}, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "input_9", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 105, 105, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 105, 105, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_9"}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "input_10", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 105, 105, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 105, 105, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_10"}}
�x
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
layer-8
layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer-12
layer-13
layer-14
layer-15
layer_with_weights-6
layer-16
	variables
trainable_variables
regularization_losses
 	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�s
_tf_keras_sequential�s{"name": "sequential_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 105, 105, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_12_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 105, 105, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_12", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_12", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_12", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_13", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_13", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_13", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_14", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_14", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_14", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 256, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "inbound_nodes": [[["input_9", 0, 0, {}]], [["input_10", 0, 0, {}]]], "shared_object_id": 44, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 55}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 105, 105, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 105, 105, 1]}, "float32", "conv2d_12_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 105, 105, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_12_input"}, "shared_object_id": 2}, {"class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 105, 105, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 5}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 8}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 10}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 11}, {"class_name": "Activation", "config": {"name": "activation_12", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 12}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_12", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 13}, {"class_name": "Dropout", "config": {"name": "dropout_12", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "shared_object_id": 14}, {"class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 17}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 18}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 20}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 22}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 23}, {"class_name": "Activation", "config": {"name": "activation_13", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 24}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_13", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 25}, {"class_name": "Dropout", "config": {"name": "dropout_13", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "shared_object_id": 26}, {"class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 27}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 28}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 29}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 30}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 31}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 32}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 33}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 34}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 35}, {"class_name": "Activation", "config": {"name": "activation_14", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 36}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_14", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 37}, {"class_name": "Dropout", "config": {"name": "dropout_14", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "shared_object_id": 38}, {"class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 39}, {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 256, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 40}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 41}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 42}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 43}]}}}
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "lambda_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Lambda", "config": {"name": "lambda_4", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAUAAABTAAAAcxYAAAB0AKABfABkARkAfABkAhkAGAChAVMAKQNO6QAAAADp\nAQAAACkC2gFL2gNhYnMpAdoHdGVuc29yc6kAcgYAAAD6Ny90bXAvc2x1cm1fZzA2MDQxNS4xMDQ3\nOTY0L2lweWtlcm5lbF8yOTc3OC82MjIzNzg5NTkucHnaCDxsYW1iZGE+HwAAAPMAAAAA\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "inbound_nodes": [[["sequential_4", 1, 0, {}], ["sequential_4", 2, 0, {}]]], "shared_object_id": 45}
�	

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "dense_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 46}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 47}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 48}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["lambda_4", 0, 0, {}]]], "shared_object_id": 49, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 56}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
�
+iter

,beta_1

-beta_2
	.decay%m�&m�/m�0m�1m�2m�5m�6m�7m�8m�;m�<m�=m�>m�Am�Bm�%v�&v�/v�0v�1v�2v�5v�6v�7v�8v�;v�<v�=v�>v�Av�Bv�"
	optimizer
�
/0
01
12
23
34
45
56
67
78
89
910
:11
;12
<13
=14
>15
?16
@17
A18
B19
%20
&21"
trackable_list_wrapper
�
/0
01
12
23
54
65
76
87
;8
<9
=10
>11
A12
B13
%14
&15"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
	variables
trainable_variables
Cmetrics
Dlayer_regularization_losses
Enon_trainable_variables
Flayer_metrics

Glayers
	regularization_losses
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
�

/kernel
0bias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�
{"name": "conv2d_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 105, 105, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_12", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 105, 105, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 5}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 55}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 105, 105, 1]}}
�

Laxis
	1gamma
2beta
3moving_mean
4moving_variance
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "batch_normalization_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_6", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 8}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 10}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}, "shared_object_id": 57}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 101, 101, 32]}}
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "activation_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_12", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 12}
�
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "max_pooling2d_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_12", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 58}}
�
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "dropout_12", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_12", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "shared_object_id": 14}
�

5kernel
6bias
]	variables
^trainable_variables
_regularization_losses
`	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�

_tf_keras_layer�	{"name": "conv2d_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_13", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 17}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 59}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50, 50, 32]}}
�

aaxis
	7gamma
8beta
9moving_mean
:moving_variance
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "batch_normalization_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_7", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 20}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 22}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 23, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}, "shared_object_id": 60}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 46, 46, 64]}}
�
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "activation_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_13", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 24}
�
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "max_pooling2d_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_13", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 25, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 61}}
�
n	variables
otrainable_variables
pregularization_losses
q	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "dropout_13", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_13", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "shared_object_id": 26}
�

;kernel
<bias
r	variables
strainable_variables
tregularization_losses
u	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�

_tf_keras_layer�	{"name": "conv2d_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_14", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 27}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 28}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 29}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 30, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 62}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 23, 23, 64]}}
�

vaxis
	=gamma
>beta
?moving_mean
@moving_variance
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "batch_normalization_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 31}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 32}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 33}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 34}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 35, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}, "shared_object_id": 63}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 19, 19, 128]}}
�
{	variables
|trainable_variables
}regularization_losses
~	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "activation_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_14", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 36}
�
	variables
�trainable_variables
�regularization_losses
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "max_pooling2d_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_14", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 37, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 64}}
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "dropout_14", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_14", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "shared_object_id": 38}
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "flatten_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 39, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 65}}
�	

Akernel
Bbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "dense_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 256, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 40}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 41}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 42}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 43, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10368}}, "shared_object_id": 66}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10368]}}
�
/0
01
12
23
34
45
56
67
78
89
910
:11
;12
<13
=14
>15
?16
@17
A18
B19"
trackable_list_wrapper
�
/0
01
12
23
54
65
76
87
;8
<9
=10
>11
A12
B13"
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
�
	variables
trainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
!	variables
"trainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
#regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
!:	�2dense_9/kernel
:2dense_9/bias
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
'	variables
(trainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
)regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
*:( 2conv2d_12/kernel
: 2conv2d_12/bias
):' 2batch_normalization_6/gamma
(:& 2batch_normalization_6/beta
1:/  (2!batch_normalization_6/moving_mean
5:3  (2%batch_normalization_6/moving_variance
*:( @2conv2d_13/kernel
:@2conv2d_13/bias
):'@2batch_normalization_7/gamma
(:&@2batch_normalization_7/beta
1:/@ (2!batch_normalization_7/moving_mean
5:3@ (2%batch_normalization_7/moving_variance
+:)@�2conv2d_14/kernel
:�2conv2d_14/bias
*:(�2batch_normalization_8/gamma
):'�2batch_normalization_8/beta
2:0� (2!batch_normalization_8/moving_mean
6:4� (2%batch_normalization_8/moving_variance
": 
�Q�2dense_8/kernel
:�2dense_8/bias
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
J
30
41
92
:3
?4
@5"
trackable_list_wrapper
 "
trackable_dict_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
H	variables
Itrainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
Jregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
<
10
21
32
43"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
�
M	variables
Ntrainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
Oregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Q	variables
Rtrainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
Sregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
U	variables
Vtrainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
Wregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Y	variables
Ztrainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
[regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
]	variables
^trainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
_regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
<
70
81
92
:3"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
�
b	variables
ctrainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
dregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
f	variables
gtrainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
hregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
j	variables
ktrainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
lregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
n	variables
otrainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
pregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
;0
<1"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
r	variables
strainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
tregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
<
=0
>1
?2
@3"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
w	variables
xtrainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
yregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
{	variables
|trainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
}regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
	variables
�trainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�	variables
�trainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�	variables
�trainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�	variables
�trainable_variables
�metrics
 �layer_regularization_losses
�non_trainable_variables
�layer_metrics
�layers
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
J
30
41
92
:3
?4
@5"
trackable_list_wrapper
 "
trackable_dict_wrapper
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16"
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
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�

�total

�count
�	variables
�	keras_api"�
_tf_keras_metric�{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 67}
�

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"�
_tf_keras_metric�{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 53}
 "
trackable_list_wrapper
(
�0"
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
.
30
41"
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
(
�0"
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
.
90
:1"
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
(
�0"
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
.
?0
@1"
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
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
&:$	�2Adam/dense_9/kernel/m
:2Adam/dense_9/bias/m
/:- 2Adam/conv2d_12/kernel/m
!: 2Adam/conv2d_12/bias/m
.:, 2"Adam/batch_normalization_6/gamma/m
-:+ 2!Adam/batch_normalization_6/beta/m
/:- @2Adam/conv2d_13/kernel/m
!:@2Adam/conv2d_13/bias/m
.:,@2"Adam/batch_normalization_7/gamma/m
-:+@2!Adam/batch_normalization_7/beta/m
0:.@�2Adam/conv2d_14/kernel/m
": �2Adam/conv2d_14/bias/m
/:-�2"Adam/batch_normalization_8/gamma/m
.:,�2!Adam/batch_normalization_8/beta/m
':%
�Q�2Adam/dense_8/kernel/m
 :�2Adam/dense_8/bias/m
&:$	�2Adam/dense_9/kernel/v
:2Adam/dense_9/bias/v
/:- 2Adam/conv2d_12/kernel/v
!: 2Adam/conv2d_12/bias/v
.:, 2"Adam/batch_normalization_6/gamma/v
-:+ 2!Adam/batch_normalization_6/beta/v
/:- @2Adam/conv2d_13/kernel/v
!:@2Adam/conv2d_13/bias/v
.:,@2"Adam/batch_normalization_7/gamma/v
-:+@2!Adam/batch_normalization_7/beta/v
0:.@�2Adam/conv2d_14/kernel/v
": �2Adam/conv2d_14/bias/v
/:-�2"Adam/batch_normalization_8/gamma/v
.:,�2!Adam/batch_normalization_8/beta/v
':%
�Q�2Adam/dense_8/kernel/v
 :�2Adam/dense_8/bias/v
�2�
D__inference_model_4_layer_call_and_return_conditional_losses_3291969
D__inference_model_4_layer_call_and_return_conditional_losses_3292193
D__inference_model_4_layer_call_and_return_conditional_losses_3291598
D__inference_model_4_layer_call_and_return_conditional_losses_3291701�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
"__inference__wrapped_model_3289663�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *_�\
Z�W
)�&
input_9���������ii
*�'
input_10���������ii
�2�
)__inference_model_4_layer_call_fn_3291212
)__inference_model_4_layer_call_fn_3292243
)__inference_model_4_layer_call_fn_3292293
)__inference_model_4_layer_call_fn_3291495�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
I__inference_sequential_4_layer_call_and_return_conditional_losses_3292424
I__inference_sequential_4_layer_call_and_return_conditional_losses_3292552
I__inference_sequential_4_layer_call_and_return_conditional_losses_3290946
I__inference_sequential_4_layer_call_and_return_conditional_losses_3291031�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
.__inference_sequential_4_layer_call_fn_3290376
.__inference_sequential_4_layer_call_fn_3292597
.__inference_sequential_4_layer_call_fn_3292642
.__inference_sequential_4_layer_call_fn_3290861�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_lambda_4_layer_call_and_return_conditional_losses_3292649
E__inference_lambda_4_layer_call_and_return_conditional_losses_3292656�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
*__inference_lambda_4_layer_call_fn_3292662
*__inference_lambda_4_layer_call_fn_3292668�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_dense_9_layer_call_and_return_conditional_losses_3292691�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_dense_9_layer_call_fn_3292700�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
__inference_loss_fn_0_3292711�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
%__inference_signature_wrapper_3291787input_10input_9"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_conv2d_12_layer_call_and_return_conditional_losses_3292734�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_conv2d_12_layer_call_fn_3292743�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_3292761
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_3292779
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_3292797
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_3292815�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
7__inference_batch_normalization_6_layer_call_fn_3292828
7__inference_batch_normalization_6_layer_call_fn_3292841
7__inference_batch_normalization_6_layer_call_fn_3292854
7__inference_batch_normalization_6_layer_call_fn_3292867�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
J__inference_activation_12_layer_call_and_return_conditional_losses_3292872�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_activation_12_layer_call_fn_3292877�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
M__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_3289795�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
2__inference_max_pooling2d_12_layer_call_fn_3289801�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
G__inference_dropout_12_layer_call_and_return_conditional_losses_3292882
G__inference_dropout_12_layer_call_and_return_conditional_losses_3292894�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
,__inference_dropout_12_layer_call_fn_3292899
,__inference_dropout_12_layer_call_fn_3292904�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
F__inference_conv2d_13_layer_call_and_return_conditional_losses_3292926�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_conv2d_13_layer_call_fn_3292935�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_3292953
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_3292971
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_3292989
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_3293007�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
7__inference_batch_normalization_7_layer_call_fn_3293020
7__inference_batch_normalization_7_layer_call_fn_3293033
7__inference_batch_normalization_7_layer_call_fn_3293046
7__inference_batch_normalization_7_layer_call_fn_3293059�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
J__inference_activation_13_layer_call_and_return_conditional_losses_3293064�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_activation_13_layer_call_fn_3293069�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_3289933�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
2__inference_max_pooling2d_13_layer_call_fn_3289939�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
G__inference_dropout_13_layer_call_and_return_conditional_losses_3293074
G__inference_dropout_13_layer_call_and_return_conditional_losses_3293086�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
,__inference_dropout_13_layer_call_fn_3293091
,__inference_dropout_13_layer_call_fn_3293096�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
F__inference_conv2d_14_layer_call_and_return_conditional_losses_3293118�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_conv2d_14_layer_call_fn_3293127�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_3293145
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_3293163
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_3293181
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_3293199�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
7__inference_batch_normalization_8_layer_call_fn_3293212
7__inference_batch_normalization_8_layer_call_fn_3293225
7__inference_batch_normalization_8_layer_call_fn_3293238
7__inference_batch_normalization_8_layer_call_fn_3293251�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
J__inference_activation_14_layer_call_and_return_conditional_losses_3293256�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_activation_14_layer_call_fn_3293261�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_3290071�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
2__inference_max_pooling2d_14_layer_call_fn_3290077�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
G__inference_dropout_14_layer_call_and_return_conditional_losses_3293266
G__inference_dropout_14_layer_call_and_return_conditional_losses_3293278�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
,__inference_dropout_14_layer_call_fn_3293283
,__inference_dropout_14_layer_call_fn_3293288�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
F__inference_flatten_4_layer_call_and_return_conditional_losses_3293294�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_flatten_4_layer_call_fn_3293299�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_dense_8_layer_call_and_return_conditional_losses_3293322�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_dense_8_layer_call_fn_3293331�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
__inference_loss_fn_1_3293342�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_2_3293353�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_3_3293364�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_4_3293375�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� �
"__inference__wrapped_model_3289663�/0123456789:;<=>?@AB%&i�f
_�\
Z�W
)�&
input_9���������ii
*�'
input_10���������ii
� "1�.
,
dense_9!�
dense_9����������
J__inference_activation_12_layer_call_and_return_conditional_losses_3292872h7�4
-�*
(�%
inputs���������ee 
� "-�*
#� 
0���������ee 
� �
/__inference_activation_12_layer_call_fn_3292877[7�4
-�*
(�%
inputs���������ee 
� " ����������ee �
J__inference_activation_13_layer_call_and_return_conditional_losses_3293064h7�4
-�*
(�%
inputs���������..@
� "-�*
#� 
0���������..@
� �
/__inference_activation_13_layer_call_fn_3293069[7�4
-�*
(�%
inputs���������..@
� " ����������..@�
J__inference_activation_14_layer_call_and_return_conditional_losses_3293256j8�5
.�+
)�&
inputs����������
� ".�+
$�!
0����������
� �
/__inference_activation_14_layer_call_fn_3293261]8�5
.�+
)�&
inputs����������
� "!������������
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_3292761�1234M�J
C�@
:�7
inputs+��������������������������� 
p 
� "?�<
5�2
0+��������������������������� 
� �
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_3292779�1234M�J
C�@
:�7
inputs+��������������������������� 
p
� "?�<
5�2
0+��������������������������� 
� �
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_3292797r1234;�8
1�.
(�%
inputs���������ee 
p 
� "-�*
#� 
0���������ee 
� �
R__inference_batch_normalization_6_layer_call_and_return_conditional_losses_3292815r1234;�8
1�.
(�%
inputs���������ee 
p
� "-�*
#� 
0���������ee 
� �
7__inference_batch_normalization_6_layer_call_fn_3292828�1234M�J
C�@
:�7
inputs+��������������������������� 
p 
� "2�/+��������������������������� �
7__inference_batch_normalization_6_layer_call_fn_3292841�1234M�J
C�@
:�7
inputs+��������������������������� 
p
� "2�/+��������������������������� �
7__inference_batch_normalization_6_layer_call_fn_3292854e1234;�8
1�.
(�%
inputs���������ee 
p 
� " ����������ee �
7__inference_batch_normalization_6_layer_call_fn_3292867e1234;�8
1�.
(�%
inputs���������ee 
p
� " ����������ee �
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_3292953�789:M�J
C�@
:�7
inputs+���������������������������@
p 
� "?�<
5�2
0+���������������������������@
� �
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_3292971�789:M�J
C�@
:�7
inputs+���������������������������@
p
� "?�<
5�2
0+���������������������������@
� �
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_3292989r789:;�8
1�.
(�%
inputs���������..@
p 
� "-�*
#� 
0���������..@
� �
R__inference_batch_normalization_7_layer_call_and_return_conditional_losses_3293007r789:;�8
1�.
(�%
inputs���������..@
p
� "-�*
#� 
0���������..@
� �
7__inference_batch_normalization_7_layer_call_fn_3293020�789:M�J
C�@
:�7
inputs+���������������������������@
p 
� "2�/+���������������������������@�
7__inference_batch_normalization_7_layer_call_fn_3293033�789:M�J
C�@
:�7
inputs+���������������������������@
p
� "2�/+���������������������������@�
7__inference_batch_normalization_7_layer_call_fn_3293046e789:;�8
1�.
(�%
inputs���������..@
p 
� " ����������..@�
7__inference_batch_normalization_7_layer_call_fn_3293059e789:;�8
1�.
(�%
inputs���������..@
p
� " ����������..@�
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_3293145�=>?@N�K
D�A
;�8
inputs,����������������������������
p 
� "@�=
6�3
0,����������������������������
� �
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_3293163�=>?@N�K
D�A
;�8
inputs,����������������������������
p
� "@�=
6�3
0,����������������������������
� �
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_3293181t=>?@<�9
2�/
)�&
inputs����������
p 
� ".�+
$�!
0����������
� �
R__inference_batch_normalization_8_layer_call_and_return_conditional_losses_3293199t=>?@<�9
2�/
)�&
inputs����������
p
� ".�+
$�!
0����������
� �
7__inference_batch_normalization_8_layer_call_fn_3293212�=>?@N�K
D�A
;�8
inputs,����������������������������
p 
� "3�0,�����������������������������
7__inference_batch_normalization_8_layer_call_fn_3293225�=>?@N�K
D�A
;�8
inputs,����������������������������
p
� "3�0,�����������������������������
7__inference_batch_normalization_8_layer_call_fn_3293238g=>?@<�9
2�/
)�&
inputs����������
p 
� "!������������
7__inference_batch_normalization_8_layer_call_fn_3293251g=>?@<�9
2�/
)�&
inputs����������
p
� "!������������
F__inference_conv2d_12_layer_call_and_return_conditional_losses_3292734l/07�4
-�*
(�%
inputs���������ii
� "-�*
#� 
0���������ee 
� �
+__inference_conv2d_12_layer_call_fn_3292743_/07�4
-�*
(�%
inputs���������ii
� " ����������ee �
F__inference_conv2d_13_layer_call_and_return_conditional_losses_3292926l567�4
-�*
(�%
inputs���������22 
� "-�*
#� 
0���������..@
� �
+__inference_conv2d_13_layer_call_fn_3292935_567�4
-�*
(�%
inputs���������22 
� " ����������..@�
F__inference_conv2d_14_layer_call_and_return_conditional_losses_3293118m;<7�4
-�*
(�%
inputs���������@
� ".�+
$�!
0����������
� �
+__inference_conv2d_14_layer_call_fn_3293127`;<7�4
-�*
(�%
inputs���������@
� "!������������
D__inference_dense_8_layer_call_and_return_conditional_losses_3293322^AB0�-
&�#
!�
inputs����������Q
� "&�#
�
0����������
� ~
)__inference_dense_8_layer_call_fn_3293331QAB0�-
&�#
!�
inputs����������Q
� "������������
D__inference_dense_9_layer_call_and_return_conditional_losses_3292691]%&0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� }
)__inference_dense_9_layer_call_fn_3292700P%&0�-
&�#
!�
inputs����������
� "�����������
G__inference_dropout_12_layer_call_and_return_conditional_losses_3292882l;�8
1�.
(�%
inputs���������22 
p 
� "-�*
#� 
0���������22 
� �
G__inference_dropout_12_layer_call_and_return_conditional_losses_3292894l;�8
1�.
(�%
inputs���������22 
p
� "-�*
#� 
0���������22 
� �
,__inference_dropout_12_layer_call_fn_3292899_;�8
1�.
(�%
inputs���������22 
p 
� " ����������22 �
,__inference_dropout_12_layer_call_fn_3292904_;�8
1�.
(�%
inputs���������22 
p
� " ����������22 �
G__inference_dropout_13_layer_call_and_return_conditional_losses_3293074l;�8
1�.
(�%
inputs���������@
p 
� "-�*
#� 
0���������@
� �
G__inference_dropout_13_layer_call_and_return_conditional_losses_3293086l;�8
1�.
(�%
inputs���������@
p
� "-�*
#� 
0���������@
� �
,__inference_dropout_13_layer_call_fn_3293091_;�8
1�.
(�%
inputs���������@
p 
� " ����������@�
,__inference_dropout_13_layer_call_fn_3293096_;�8
1�.
(�%
inputs���������@
p
� " ����������@�
G__inference_dropout_14_layer_call_and_return_conditional_losses_3293266n<�9
2�/
)�&
inputs���������		�
p 
� ".�+
$�!
0���������		�
� �
G__inference_dropout_14_layer_call_and_return_conditional_losses_3293278n<�9
2�/
)�&
inputs���������		�
p
� ".�+
$�!
0���������		�
� �
,__inference_dropout_14_layer_call_fn_3293283a<�9
2�/
)�&
inputs���������		�
p 
� "!����������		��
,__inference_dropout_14_layer_call_fn_3293288a<�9
2�/
)�&
inputs���������		�
p
� "!����������		��
F__inference_flatten_4_layer_call_and_return_conditional_losses_3293294b8�5
.�+
)�&
inputs���������		�
� "&�#
�
0����������Q
� �
+__inference_flatten_4_layer_call_fn_3293299U8�5
.�+
)�&
inputs���������		�
� "�����������Q�
E__inference_lambda_4_layer_call_and_return_conditional_losses_3292649�d�a
Z�W
M�J
#� 
inputs/0����������
#� 
inputs/1����������

 
p 
� "&�#
�
0����������
� �
E__inference_lambda_4_layer_call_and_return_conditional_losses_3292656�d�a
Z�W
M�J
#� 
inputs/0����������
#� 
inputs/1����������

 
p
� "&�#
�
0����������
� �
*__inference_lambda_4_layer_call_fn_3292662�d�a
Z�W
M�J
#� 
inputs/0����������
#� 
inputs/1����������

 
p 
� "������������
*__inference_lambda_4_layer_call_fn_3292668�d�a
Z�W
M�J
#� 
inputs/0����������
#� 
inputs/1����������

 
p
� "�����������<
__inference_loss_fn_0_3292711%�

� 
� "� <
__inference_loss_fn_1_3293342/�

� 
� "� <
__inference_loss_fn_2_32933535�

� 
� "� <
__inference_loss_fn_3_3293364;�

� 
� "� <
__inference_loss_fn_4_3293375A�

� 
� "� �
M__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_3289795�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
2__inference_max_pooling2d_12_layer_call_fn_3289801�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
M__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_3289933�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
2__inference_max_pooling2d_13_layer_call_fn_3289939�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
M__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_3290071�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
2__inference_max_pooling2d_14_layer_call_fn_3290077�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
D__inference_model_4_layer_call_and_return_conditional_losses_3291598�/0123456789:;<=>?@AB%&q�n
g�d
Z�W
)�&
input_9���������ii
*�'
input_10���������ii
p 

 
� "%�"
�
0���������
� �
D__inference_model_4_layer_call_and_return_conditional_losses_3291701�/0123456789:;<=>?@AB%&q�n
g�d
Z�W
)�&
input_9���������ii
*�'
input_10���������ii
p

 
� "%�"
�
0���������
� �
D__inference_model_4_layer_call_and_return_conditional_losses_3291969�/0123456789:;<=>?@AB%&r�o
h�e
[�X
*�'
inputs/0���������ii
*�'
inputs/1���������ii
p 

 
� "%�"
�
0���������
� �
D__inference_model_4_layer_call_and_return_conditional_losses_3292193�/0123456789:;<=>?@AB%&r�o
h�e
[�X
*�'
inputs/0���������ii
*�'
inputs/1���������ii
p

 
� "%�"
�
0���������
� �
)__inference_model_4_layer_call_fn_3291212�/0123456789:;<=>?@AB%&q�n
g�d
Z�W
)�&
input_9���������ii
*�'
input_10���������ii
p 

 
� "�����������
)__inference_model_4_layer_call_fn_3291495�/0123456789:;<=>?@AB%&q�n
g�d
Z�W
)�&
input_9���������ii
*�'
input_10���������ii
p

 
� "�����������
)__inference_model_4_layer_call_fn_3292243�/0123456789:;<=>?@AB%&r�o
h�e
[�X
*�'
inputs/0���������ii
*�'
inputs/1���������ii
p 

 
� "�����������
)__inference_model_4_layer_call_fn_3292293�/0123456789:;<=>?@AB%&r�o
h�e
[�X
*�'
inputs/0���������ii
*�'
inputs/1���������ii
p

 
� "�����������
I__inference_sequential_4_layer_call_and_return_conditional_losses_3290946�/0123456789:;<=>?@ABH�E
>�;
1�.
conv2d_12_input���������ii
p 

 
� "&�#
�
0����������
� �
I__inference_sequential_4_layer_call_and_return_conditional_losses_3291031�/0123456789:;<=>?@ABH�E
>�;
1�.
conv2d_12_input���������ii
p

 
� "&�#
�
0����������
� �
I__inference_sequential_4_layer_call_and_return_conditional_losses_3292424/0123456789:;<=>?@AB?�<
5�2
(�%
inputs���������ii
p 

 
� "&�#
�
0����������
� �
I__inference_sequential_4_layer_call_and_return_conditional_losses_3292552/0123456789:;<=>?@AB?�<
5�2
(�%
inputs���������ii
p

 
� "&�#
�
0����������
� �
.__inference_sequential_4_layer_call_fn_3290376{/0123456789:;<=>?@ABH�E
>�;
1�.
conv2d_12_input���������ii
p 

 
� "������������
.__inference_sequential_4_layer_call_fn_3290861{/0123456789:;<=>?@ABH�E
>�;
1�.
conv2d_12_input���������ii
p

 
� "������������
.__inference_sequential_4_layer_call_fn_3292597r/0123456789:;<=>?@AB?�<
5�2
(�%
inputs���������ii
p 

 
� "������������
.__inference_sequential_4_layer_call_fn_3292642r/0123456789:;<=>?@AB?�<
5�2
(�%
inputs���������ii
p

 
� "������������
%__inference_signature_wrapper_3291787�/0123456789:;<=>?@AB%&{�x
� 
q�n
6
input_10*�'
input_10���������ii
4
input_9)�&
input_9���������ii"1�.
,
dense_9!�
dense_9���������