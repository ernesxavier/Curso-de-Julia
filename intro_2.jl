### A Pluto.jl notebook ###
# v0.20.3

using Markdown
using InteractiveUtils

# ╔═╡ 357c58be-8ac8-4cd6-b1d3-1250289bc6f1
using PlutoUI

# ╔═╡ 3ae39779-a359-492f-ac1d-62844f6bd974
using LinearAlgebra

# ╔═╡ 46c46a54-dff0-4fcb-9dbd-7e4c70e1034d
using Random 

# ╔═╡ 1e3a8e5c-9be9-11ef-0bdd-a59dad06722f
md"""
# Introducción a Julia 
"""

# ╔═╡ 75eb9225-0288-446c-8309-0e96db78abc4
TableOfContents(title="Índice")

# ╔═╡ b23d3348-e10b-41f3-8ff3-688ed07d540a
md"""
## Variables
"""

# ╔═╡ 02095693-96a0-4909-a859-598c50191d48
x = 15

# ╔═╡ bcbe8fab-46c6-49a9-9335-86f97908201c
y = 5

# ╔═╡ 4a5a3c63-a580-40b0-991c-2dbd416a92ba
begin
	a = x 
	b = y
end

# ╔═╡ cd417f08-7258-4e6d-8810-ab6fd0d9496a
a

# ╔═╡ 388dd658-ffdc-4297-a794-776ed71fef77
b

# ╔═╡ 0f21e170-a1d6-490f-9814-321e0fdc8d0f
a + b

# ╔═╡ c1b5ea53-fb50-472f-afa3-7721a4813a3f
x + y

# ╔═╡ c32350f6-9599-44af-a26e-551676ce7ea1
A = a + b

# ╔═╡ 75a89ed7-b606-49a3-bade-b57a12ee7da7
X = x + y 

# ╔═╡ 32ee13af-c1d2-42e4-b0c1-c4fe5d5fb9b9
md"""
Area de un rectangulo: 

$A = h * l$
"""

# ╔═╡ 8b8499a9-16af-4af5-a19e-7dc5ac32ea7f
begin
	altura = 100
	largo = 25
end

# ╔═╡ 1807dc92-276c-4323-9bc1-518c0b2cab5b
area = altura * largo

# ╔═╡ bf2aa6e6-aeb5-48b3-a000-c0acd210f04e
md"""
area = altura * largo
"""

# ╔═╡ 6d396a4c-bc28-4db1-b95c-75210f6d3460
md"""
## Tipo de datos 
"""

# ╔═╡ 28056edc-dd2a-4f22-945c-0b32239f2ec9
entero = 2

# ╔═╡ 20375dbe-ffbb-4854-9c3a-36eeb9d85719
typeof(entero)

# ╔═╡ 6f9e95dd-3544-43b3-9968-b93fb5eb4307
float = 2.0

# ╔═╡ 89e0c791-11f1-4af1-a86d-e3fd68844a79
typeof(float)

# ╔═╡ cb876949-b2ce-4b31-98ac-eb61c12ceb8d
letras = "Hola Mundo" 

# ╔═╡ f5857593-9937-4670-ab2d-704644419761
typeof(letras)

# ╔═╡ 1883d48a-96a1-4bbd-bac6-4cd78607f264
typeof(true)

# ╔═╡ f6642594-03fb-46ef-9479-ffb0cfc3beb5
typeof(false)

# ╔═╡ bdbb7010-01e7-4157-bcd9-5dd4ac6c896c
π

# ╔═╡ b4c0360b-a0d8-4fb2-99bd-5cbe6fc30d0c
typeof(π)

# ╔═╡ 2fa69f9b-2bf0-4d01-8887-41af34b5a6ba
typeof('a')

# ╔═╡ 07194dd1-709e-4fab-9e58-cb0ca3d1ecc8
md"""
## Funciones incorporadas
"""

# ╔═╡ e1528658-09e4-4bcd-9555-1363802e1361
2 + 2

# ╔═╡ e3016428-1066-4f0f-98a6-30ca4231105e
x + y 

# ╔═╡ c763cf26-a13d-4dd3-8eac-d1dba8284bef
y - x 

# ╔═╡ 747bf599-e1ee-454e-b738-69b96da1e9d3
x / y 

# ╔═╡ 3600c63c-14b7-4578-a15f-be99563e2d0e
10^6

# ╔═╡ a1dd3d42-e1e2-4b42-83ea-8fa0be88bd0c
1000000

# ╔═╡ aada24ef-0da6-4bdb-acb0-573dc719be99
1_000_000

# ╔═╡ e2e80332-07cf-4772-b315-f037eba667dc
10^6 == 1000000 == 1_000_000

# ╔═╡ 931398ea-597b-4cc5-af3b-af646e05e082
9^(1/2)

# ╔═╡ 972c24a6-e277-4019-8e96-1a0035847a00
sqrt(9)

# ╔═╡ b01d9544-7350-4fb9-8995-36956f1ebea5
convert(Int64, 3.0)

# ╔═╡ 13423d83-c0bf-4c13-bae0-9283747f2309
convert(Float64, 3) # Este es un comentario 

# ╔═╡ 80a2d5ec-7a52-4c57-b1f2-7625f1393359
iseven(3)

# ╔═╡ 9f989d39-f14e-4ca9-a19d-c229703f77d2
iseven(2)

# ╔═╡ f22fc7c4-35b0-432f-81d8-0c3207c319a8
isodd(2)

# ╔═╡ 8322ae1a-bac8-460b-9cb5-45d4797a8ac8
isodd(3)

# ╔═╡ 4d0e9e8e-0089-41d1-9adf-6b16c041f710
6 % 3

# ╔═╡ d23959e9-5688-4e12-8b02-11b85cf5393e
5 % 3

# ╔═╡ 09e83bca-99ad-4597-925c-73d505436a64
round(3.1416)

# ╔═╡ 62258f1e-5c41-4fa8-8906-c8f858d6975a
round(3.1416, digits=2)

# ╔═╡ 3a0ac726-1043-407b-8021-5113e8cd0ec8
round(3.1416, digits=2, RoundDown)

# ╔═╡ b861af02-1f61-4749-8d2c-b62902990c29
md"""
## Lógica
"""

# ╔═╡ 298f65de-da32-48ba-998c-f89517c322bc
begin
	n = 1
	m = 2
	p = 3
end 

# ╔═╡ 40ed98ab-2f2b-4656-a9c5-7e673bf73dd7
x * p

# ╔═╡ e987bda1-810b-4eb0-9f05-74f17acd7666
p

# ╔═╡ 46b735ae-da25-4d9f-b66b-f0ff8fe8ba4f
m

# ╔═╡ fc1dff98-c9e2-49e4-bbee-5bdcc29eb2a5
n

# ╔═╡ 4c3b6443-a307-42be-ba92-55cb1f9c415f
n > m 

# ╔═╡ 3708d079-a423-4129-b288-3a09fea75a45
m > n 

# ╔═╡ 86c60693-9ffb-4dd1-b778-d22902db9fe1
p > n

# ╔═╡ ab68755c-f4f9-491c-b3a6-e907af264f0f
n < p 

# ╔═╡ cb1c71de-dc67-4758-96aa-78f206fe2c3c
n < m  && m > p # true && false

# ╔═╡ 6101146e-60c9-4480-a650-956d15deade7
m > n && p > m # true && true 

# ╔═╡ fba07f73-c3a6-4e53-8afa-7ef34e8f4864
n < m  || m > p # true || false 

# ╔═╡ 3668ef67-701e-49a2-b4fa-2a3ecadc3108
n > m  || m > p # false || false 

# ╔═╡ e255b6bb-c6c2-4012-a222-e3baa5b44387
md"""
## Estructuras de datos 
"""

# ╔═╡ d1e29c9d-915d-482e-842a-4eeff3c217e9
md"""
### Diccionarios 
"""

# ╔═╡ 5d069e14-00e3-427a-bc0d-e082e8e6ea87
diccionario = Dict()

# ╔═╡ 06bcca94-1442-4247-8fc6-b7d0de18c512
typeof(diccionario)

# ╔═╡ e62bbe8c-e1f2-48a9-a4e8-3fd76f2faca8
diccionario["uno"] = 1

# ╔═╡ f0842b41-cff3-4704-a3f8-9c89def68c4d
diccionario["uno"]

# ╔═╡ 42adcb63-016b-4c61-a504-e26b0658e9aa
agenda = Dict()

# ╔═╡ cc0586a5-d57f-477d-a25e-85ecfecd2308
agenda["Xavier"] = 5555555

# ╔═╡ b9f2fccc-3a58-46d6-860a-31c6e79f819b
agenda["Yael"] = 6666666

# ╔═╡ 178c4302-ded1-44bf-a8dc-85f9098b1692
agenda["Xavier"]

# ╔═╡ dd31115b-ee6d-4ce9-bf69-e04590440019
colonia = Dict("Ernesto" => "Miguel Hidalgo", "Nicole" => "Polanco")

# ╔═╡ e95c98c1-480b-4729-b1f4-0c29531781f3
colonia["Ernesto"]

# ╔═╡ 91cd130f-0005-492b-970f-72490acea456
md"""
### Tuplas
"""

# ╔═╡ 1bbabc8f-bfb5-4ce8-8ba7-944e575d0259
tupla_1 = (1, 2, 3, 4, 5)

# ╔═╡ 48be8908-26f6-44e7-95d5-6eb3a12512a7
typeof(tupla_1)

# ╔═╡ d8ecb3aa-d187-4a43-ac87-eeb517a46afd
tupla_2 = ('a', 'b', 'c', 'd')

# ╔═╡ 8290e987-4925-423f-9b40-b44b9ad36a20
typeof(tupla_2)

# ╔═╡ 8e0baf7f-2209-4c57-bf34-2a1f97fc72e4
tupla_1[1]

# ╔═╡ 43a7fd93-60da-49de-a0c4-acde65341829
tupla_2[3]

# ╔═╡ 280e28cd-ed29-435b-a82e-0674b52d2a67
tupla_1[2] = 3

# ╔═╡ 827c7116-f1d4-4a77-b1f5-582ce4cf9276
md"""
### Matrices (o Arrays)
"""

# ╔═╡ c489e9c8-1f13-4196-ae46-bed5a173b490
AA = [ ]

# ╔═╡ 946c6610-6b25-4075-b786-a52cbf98c9bb
typeof(AA)

# ╔═╡ e778738a-7a84-4b44-9bac-be3530f3ec9a
VC = [1, 2, 3, 4, 5 ]

# ╔═╡ 3a5a6db7-7cca-438b-a1ee-7042acb8d52f
typeof(VC)

# ╔═╡ e90cf612-82c1-449f-95ab-646098d8c248
VF = [1 2 3 4 5]

# ╔═╡ d3dd4de9-05cf-4453-929a-5670a863d761
typeof(VF)

# ╔═╡ acdb3d54-2b77-497f-9b48-4875e522d547
M = [1 2; 3 4]

# ╔═╡ 1efb408a-aef3-4303-8a02-cccb96154e80
typeof(M)

# ╔═╡ 3d4aaa27-eeeb-4432-9c26-36f7e4de636c
M_1 = [1 2 3; 4 5 6; 7 8 9]

# ╔═╡ 834ff3fd-20d7-4158-8463-4d35d93712ef
M

# ╔═╡ 1fac792a-125d-4e36-bfae-8f8bd0806cae
M[2]

# ╔═╡ c0057b1c-590e-4375-884e-be0b55b6c433
M[1]

# ╔═╡ 1ef20282-1b52-419f-91dd-4117c35c5b3e
M[3]

# ╔═╡ ce9d0d7f-dda3-43f9-83a4-8c06fc0d7d6d
M[1] = 5

# ╔═╡ 41992a56-669a-4fde-8e08-20aa8dbcd8ee
M

# ╔═╡ 0027f817-380f-4470-8b97-acc3d663d5bf
M_1

# ╔═╡ 43e709f5-977a-4f2a-920c-48cf4065380e
M_1[2]

# ╔═╡ 1baff40f-453b-4531-b332-8df25c8cefa4
M_1[2, 1]

# ╔═╡ 15e01f9d-b284-4f31-8b01-c74a98de1e63
M_1[1, 2]

# ╔═╡ 8a8e4cb4-543b-4a4f-bd89-40ab7b5e3d33
M_1[:, 1]

# ╔═╡ 89f16ae7-bb94-4d27-8e30-38533e725e04
M_1[:, 2]

# ╔═╡ 7ce2b6ff-2442-4dbc-ab5f-44df24ca86e2
M_1[:, 3]

# ╔═╡ b9ecbda1-1f85-4511-a178-14636b27e69f
M_1

# ╔═╡ dec084f7-b78a-432f-acfd-a32b5eeefd68
M_1[1, :]

# ╔═╡ 19138cb1-4f97-4989-a2b2-024bff14bb33
M_1[2, :]

# ╔═╡ 4c283f70-2ef3-40cd-bf53-a6b0883415da
M_1[3, :]

# ╔═╡ 1ff6f910-6603-4515-9492-27111a89a72a
M_1[1:2, 2:3]

# ╔═╡ c0516302-8bb0-4926-9b07-a88bf99cfc96
M_1[1:3, 2:3]

# ╔═╡ 6d4c1bd7-e246-4918-a2f1-d147e3949a47
M_1

# ╔═╡ 38854256-3534-43ff-a1c3-61b912eb3951
M_2 = M_1[1:3, 2:3]

# ╔═╡ 69405850-755e-4b75-95fb-f82598da07f7
M_2

# ╔═╡ 6bba40ab-a50c-43f1-85f8-baaa0da10e8b
M_1

# ╔═╡ 5e192103-db4e-4916-b33d-40f6d313f8ca
M_1[1]

# ╔═╡ 73875c2f-0cf4-47b6-924f-811f98983d6f
M_1[3]

# ╔═╡ 05a1e019-be50-4199-9397-ab3828f234fa
M_1[4]

# ╔═╡ 48575b78-2035-45ee-8ce9-5c3734a291a6
M_1[1:3]

# ╔═╡ 454a9c6f-0f3b-4f80-998a-91d4fa3c3333
M_1[1:4]

# ╔═╡ 7125b9fe-b9f1-4d5b-82f4-9e4e93fd4d24
M_1[begin:end]

# ╔═╡ 54092455-89f9-4234-926f-2186d9cbdadb
M_1[:]

# ╔═╡ 575484fc-b15a-433b-8cf7-2c674320eefb
0.5 .+ M_1

# ╔═╡ db6943a1-b4c8-46bb-8028-6030c4fb615b
M_3 = 0.5 .+ M_1

# ╔═╡ 8257080a-0aa8-4eeb-8374-d1a26143957b
0.5 .- M_3

# ╔═╡ 87d6b60a-32f0-4970-95b0-0f9d5913717e
M_3

# ╔═╡ e3d33848-2f6a-475f-8ec8-ed2f8f117859
M_4 = 0.5 .- M_3

# ╔═╡ 2e82f4b1-962d-4b1e-b06b-15f2ddbfbdf4
-1 .* M_4 

# ╔═╡ 29ba0094-e723-4579-a385-35b9bfc11ad0
M_3 ./ 0.5

# ╔═╡ efa17182-4ceb-48de-b8c2-83385131c1ba
M_3 

# ╔═╡ 04dfa6bb-9b35-40d2-a7d2-9716a79f3952
size(M_3)

# ╔═╡ 8bfb51a6-7d80-442b-8e88-cdabcdf42efc
length(M_3)

# ╔═╡ 648bc2bf-6467-4ce5-8b65-23fe04c89ea5
typeof(M_3)

# ╔═╡ 6289eb5a-63ca-4f83-913f-9dbfb2a1e8d6
eltype(M_3)

# ╔═╡ c08d36ab-5a7e-4116-97ad-20a9b34bd156
eltype(M_1)

# ╔═╡ f4ad0e81-c0e0-4e31-a7ca-f9642fcf7aeb
M_3

# ╔═╡ 58160d7f-1f6b-47e5-bac1-38bc03d0fe3c
M_1

# ╔═╡ 37b6e06e-1972-4b8a-add1-fd928fa0bfe6
minimum(M_1)

# ╔═╡ 9961d280-bb5d-4216-a1f0-e8e33ff0a9cf
minimum(M_3)

# ╔═╡ b9d60526-b48a-4865-9eb9-9dcdca5180c8
maximum(M_1)

# ╔═╡ f67d7def-fa5d-4132-9b18-dfd1200c4910
maximum(M_3)

# ╔═╡ 816a4bcc-443f-4382-a1b6-0ca020f0567c
M_1

# ╔═╡ bb15bfcc-50f6-45cf-9098-d361bf9dbc72
M_3

# ╔═╡ 7524dbb5-cfe6-441a-8f47-a132e692129d
M_2

# ╔═╡ c96cca1e-eeab-4a2b-8920-7136ebde750a


# ╔═╡ 515f938a-46e3-4a14-80fd-a20a88ded4b0
M_1 .- M_3 


# ╔═╡ 0f9df66c-7ea7-45b8-a983-f33f3b5eb480
M_1 - M_3 

# ╔═╡ 7440478a-8218-4822-8d61-a57cfcaa6ada
M_5 = M_1 * M_3

# ╔═╡ 0e2431c5-edd8-42e3-914b-4ad962e75f3f
minimum(M_5)

# ╔═╡ a1a5113c-73aa-4468-98ed-84f5e1133f2a
M_3

# ╔═╡ 17df65a0-5d6a-49c3-a7c8-7b4a832dc9fd
M_6 = M_1 - M_3

# ╔═╡ dca8011f-b75b-4baa-a2d8-b9ea2da049d7
M_6^2

# ╔═╡ 16d4b484-6872-47ad-9013-8c065104b095
M_6.^2

# ╔═╡ 0fc733c7-43d4-4643-a196-0ef8a46bdbe9
M_6

# ╔═╡ 9f3b8782-5667-4c48-974a-4f87221acd54
M_1

# ╔═╡ 61e7f77b-f434-4fdc-9b01-c93a267847e2
transpose(M_1)

# ╔═╡ 9ada7faf-a14a-4dfb-8642-29ccb22c4555
M_1'

# ╔═╡ 3268157b-fb95-4162-9d8d-affad6bdbc8d
inv(M_1)

# ╔═╡ a7c92808-ba43-40ae-8fac-d3fc56711651
M_1

# ╔═╡ 7ab0a6b1-62b7-4a58-a733-cf3cf2068257
M_1

# ╔═╡ e08b711b-d2e9-46c1-999e-bab698112485
M_1'

# ╔═╡ 22bb9f1b-ce6d-4aa7-a548-5774410d4d65
inv(M_1)

# ╔═╡ 386562a1-e63e-4aa6-8c92-42215c408776
det(M_1)

# ╔═╡ 6cf73ad2-8326-4a90-b9d4-ee0b0a4e797d
det(M_3)

# ╔═╡ 5fe1fdaa-e9ba-4d79-bacd-52617dd37239
M_1

# ╔═╡ 5f2eaa97-7c3e-4141-8656-c75dd2d873a1
M_7 = [1.0 2.0 3.0; 4.0 5.0 6.0; 7.0 8.0 9.0]

# ╔═╡ 11ab5eb2-7330-4987-bd49-0b461051c618
det(M_7)

# ╔═╡ 2094fcd9-348a-44fa-bcaf-654812006bd4
inv(M_7)

# ╔═╡ 49e904d1-b488-428e-89fd-5ccb1b6a41fc
M_1

# ╔═╡ c25c61d7-e981-473d-8991-5be5918b83ae
M_3

# ╔═╡ 8f174999-76ae-4d29-a922-cb9b5f0f4422
M_8 = [M_1 ; M_3 ; M_7]

# ╔═╡ 997a6ebf-00e1-47aa-8779-61e917231eeb
[M_1 M_3 M_7]

# ╔═╡ bdd69ae7-8e40-41c1-aa73-fa7c416c23ad
zeros(3)

# ╔═╡ e5aa4101-2bae-4cd7-b29d-977d2591fea0
zeros(Int64, 3)

# ╔═╡ fd23fbf9-2952-4477-afc9-9ccf6501e492
zeros(3, 3)

# ╔═╡ a22d085e-0b32-4ec9-adf7-2b4fee73e9ce
zeros(100, 100)

# ╔═╡ affdfd9a-7acb-4d62-9684-cf5674d7b7a9
ones(5)

# ╔═╡ 6055259b-bb51-486d-b4f3-33bd108bf960
ones(Int8, 5)

# ╔═╡ cd834464-5289-4df1-b03e-7707fb1c217b
ones(100, 100)

# ╔═╡ a8ca1efd-2f49-4e76-a109-2d80cd59da5a
falses(5, 5)

# ╔═╡ d67baa37-d7b2-474c-90be-7e5f45a2db6e
trues(5, 5)

# ╔═╡ 95271c47-5318-4390-88c7-57c2927fa8c9
fill(5, 3, 2)

# ╔═╡ c22e842f-59c7-44ad-ab26-868fff32c851
fill(π, 10, 10)

# ╔═╡ aa05d65f-0fa4-43da-8b0c-c7f82886364e
# ╠═╡ disabled = true
#=╠═╡
β = 2.5
  ╠═╡ =#

# ╔═╡ 9e962dfc-729d-4928-ad16-af1369a53cbe
β = 9

# ╔═╡ 7b8ef850-8b81-4a36-81c5-81cf9723eb5f
fill(β, 5, 5)

# ╔═╡ 5e92d4be-384a-40ef-9cdb-1278de250d88
M_1

# ╔═╡ ecac1c1f-dca5-4e58-a39a-487da20b4d4f
M_1[:]

# ╔═╡ 757872c1-5f00-4ee4-a329-e9539ec30d56
M_9 = M_1[:]

# ╔═╡ 3ce03175-f583-4fe2-9a61-e76286e9636f
sort(M_9)

# ╔═╡ 62fa7209-e820-4497-b807-302d8ca15aac
M_9

# ╔═╡ d02cf0bc-753a-4d5e-99f6-260851153bd8
sort!(M_9)

# ╔═╡ 82525124-c641-4f3a-82b0-499174f2216d
M_9

# ╔═╡ 3a1aa072-baee-4be6-8bc6-562aeefcf4ed
sort!(M_9, rev=true)

# ╔═╡ 77a4be6b-7112-4fab-a096-ce2d4e29a604
M_9

# ╔═╡ 8137e129-dd58-4b15-9cbf-eec86c4df6b1
push!(M_9, 0)

# ╔═╡ 38cc5906-c24b-419d-8621-57ecd6838e1a
M_9

# ╔═╡ 242b487c-ecc1-4cef-a511-d439ef2f6a31
pop!(M_9)

# ╔═╡ 4a8dac4c-a0b9-4771-ae9a-3e3d54fecb7f
M_9

# ╔═╡ 188605ed-8c1b-4751-9124-2bf30603016a
popfirst!(M_9)

# ╔═╡ f9c05cea-488e-4312-9fde-109d2fd3083f
M_9

# ╔═╡ 1b87d004-9ade-495c-ae18-c898c8107f2f
rand(3, 2)

# ╔═╡ 9db6b4f9-48f4-4557-a2ff-a87af403742b
rand(3, 3, 2)

# ╔═╡ dc8a331f-4c4b-4821-ab6a-de556b7f955b


# ╔═╡ 34260232-cff5-4e49-b7ce-180d2c912cbd


# ╔═╡ d4845122-1878-43e3-aa3f-a492c2eaed3f


# ╔═╡ bc229008-aed0-4bb3-8367-0b798711c7f3


# ╔═╡ f04803ff-c6a7-482c-b21d-4f7897ec3871


# ╔═╡ b93dcc53-7088-4f5e-ba75-89d212ada74d


# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
Random = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[compat]
PlutoUI = "~0.7.60"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.11.1"
manifest_format = "2.0"
project_hash = "ce60045ea68607ebd452e3d578a0d5ec4f3091b3"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "6e1d2a35f2f90a4bc7c2ed98079b2ba09c35b83a"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.3.2"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.2"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"
version = "1.11.0"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"
version = "1.11.0"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "b10d0b65641d57b8b4d5e234446582de5047050d"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.5"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.1.1+0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"
version = "1.11.0"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"
version = "1.11.0"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "05882d6995ae5c12bb5f36dd2ed3f61c98cbb172"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.5"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "179267cfa5e712760cd43dcae385d7ea90cc25a4"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.5"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "7134810b1afce04bbc1045ca1985fbe81ce17653"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.5"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "b6d6bfdd7ce25b0f9b2f6b3dd56b2673a66c8770"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.5"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"
version = "1.11.0"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "31e996f0a15c7b280ba9f76636b3ff9e2ae58c9a"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.4"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.4"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "8.6.0+0"

[[deps.LibGit2]]
deps = ["Base64", "LibGit2_jll", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"
version = "1.11.0"

[[deps.LibGit2_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll"]
uuid = "e37daf67-58a4-590a-8e99-b0245dd2ffc5"
version = "1.7.2+0"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.11.0+1"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"
version = "1.11.0"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
version = "1.11.0"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"
version = "1.11.0"

[[deps.MIMEs]]
git-tree-sha1 = "65f28ad4b594aebe22157d6fac869786a255b7eb"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "0.1.4"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"
version = "1.11.0"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.6+0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"
version = "1.11.0"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2023.12.12"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.27+1"

[[deps.Parsers]]
deps = ["Dates", "PrecompileTools", "UUIDs"]
git-tree-sha1 = "8489905bcdbcfac64d1daa51ca07c0d8f0283821"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.8.1"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "FileWatching", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "Random", "SHA", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.11.0"

    [deps.Pkg.extensions]
    REPLExt = "REPL"

    [deps.Pkg.weakdeps]
    REPL = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "eba4810d5e6a01f612b948c9fa94f905b49087b0"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.60"

[[deps.PrecompileTools]]
deps = ["Preferences"]
git-tree-sha1 = "5aa36f7049a63a1528fe8f7c3f2113413ffd4e1f"
uuid = "aea7be01-6a6a-4083-8856-8a6e6704d82a"
version = "1.2.1"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "9306f6085165d270f7e3db02af26a400d580f5c6"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.4.3"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"
version = "1.11.0"

[[deps.Random]]
deps = ["SHA"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"
version = "1.11.0"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"
version = "1.11.0"

[[deps.Statistics]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "ae3bb1eb3bba077cd276bc5cfc337cc65c3075c0"
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.11.1"

    [deps.Statistics.extensions]
    SparseArraysExt = ["SparseArrays"]

    [deps.Statistics.weakdeps]
    SparseArrays = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.3"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"
version = "1.11.0"

[[deps.Tricks]]
git-tree-sha1 = "7822b97e99a1672bfb1b49b668a6d46d58d8cbcb"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.9"

[[deps.URIs]]
git-tree-sha1 = "67db6cc7b3821e19ebe75791a9dd19c9b1188f2b"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.5.1"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"
version = "1.11.0"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"
version = "1.11.0"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.13+1"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.11.0+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.59.0+0"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+2"
"""

# ╔═╡ Cell order:
# ╠═1e3a8e5c-9be9-11ef-0bdd-a59dad06722f
# ╠═357c58be-8ac8-4cd6-b1d3-1250289bc6f1
# ╠═75eb9225-0288-446c-8309-0e96db78abc4
# ╠═b23d3348-e10b-41f3-8ff3-688ed07d540a
# ╠═02095693-96a0-4909-a859-598c50191d48
# ╠═bcbe8fab-46c6-49a9-9335-86f97908201c
# ╠═4a5a3c63-a580-40b0-991c-2dbd416a92ba
# ╠═cd417f08-7258-4e6d-8810-ab6fd0d9496a
# ╠═388dd658-ffdc-4297-a794-776ed71fef77
# ╠═0f21e170-a1d6-490f-9814-321e0fdc8d0f
# ╠═c1b5ea53-fb50-472f-afa3-7721a4813a3f
# ╠═c32350f6-9599-44af-a26e-551676ce7ea1
# ╠═75a89ed7-b606-49a3-bade-b57a12ee7da7
# ╠═32ee13af-c1d2-42e4-b0c1-c4fe5d5fb9b9
# ╠═8b8499a9-16af-4af5-a19e-7dc5ac32ea7f
# ╠═1807dc92-276c-4323-9bc1-518c0b2cab5b
# ╠═bf2aa6e6-aeb5-48b3-a000-c0acd210f04e
# ╠═6d396a4c-bc28-4db1-b95c-75210f6d3460
# ╠═28056edc-dd2a-4f22-945c-0b32239f2ec9
# ╠═20375dbe-ffbb-4854-9c3a-36eeb9d85719
# ╠═6f9e95dd-3544-43b3-9968-b93fb5eb4307
# ╠═89e0c791-11f1-4af1-a86d-e3fd68844a79
# ╠═cb876949-b2ce-4b31-98ac-eb61c12ceb8d
# ╠═f5857593-9937-4670-ab2d-704644419761
# ╠═1883d48a-96a1-4bbd-bac6-4cd78607f264
# ╠═f6642594-03fb-46ef-9479-ffb0cfc3beb5
# ╠═bdbb7010-01e7-4157-bcd9-5dd4ac6c896c
# ╠═b4c0360b-a0d8-4fb2-99bd-5cbe6fc30d0c
# ╠═2fa69f9b-2bf0-4d01-8887-41af34b5a6ba
# ╠═07194dd1-709e-4fab-9e58-cb0ca3d1ecc8
# ╠═e1528658-09e4-4bcd-9555-1363802e1361
# ╠═e3016428-1066-4f0f-98a6-30ca4231105e
# ╠═c763cf26-a13d-4dd3-8eac-d1dba8284bef
# ╠═40ed98ab-2f2b-4656-a9c5-7e673bf73dd7
# ╠═747bf599-e1ee-454e-b738-69b96da1e9d3
# ╠═3600c63c-14b7-4578-a15f-be99563e2d0e
# ╠═a1dd3d42-e1e2-4b42-83ea-8fa0be88bd0c
# ╠═aada24ef-0da6-4bdb-acb0-573dc719be99
# ╠═e2e80332-07cf-4772-b315-f037eba667dc
# ╠═931398ea-597b-4cc5-af3b-af646e05e082
# ╠═972c24a6-e277-4019-8e96-1a0035847a00
# ╠═b01d9544-7350-4fb9-8995-36956f1ebea5
# ╠═13423d83-c0bf-4c13-bae0-9283747f2309
# ╠═80a2d5ec-7a52-4c57-b1f2-7625f1393359
# ╠═9f989d39-f14e-4ca9-a19d-c229703f77d2
# ╠═f22fc7c4-35b0-432f-81d8-0c3207c319a8
# ╠═8322ae1a-bac8-460b-9cb5-45d4797a8ac8
# ╠═4d0e9e8e-0089-41d1-9adf-6b16c041f710
# ╠═d23959e9-5688-4e12-8b02-11b85cf5393e
# ╠═09e83bca-99ad-4597-925c-73d505436a64
# ╠═62258f1e-5c41-4fa8-8906-c8f858d6975a
# ╠═3a0ac726-1043-407b-8021-5113e8cd0ec8
# ╟─b861af02-1f61-4749-8d2c-b62902990c29
# ╠═298f65de-da32-48ba-998c-f89517c322bc
# ╠═e987bda1-810b-4eb0-9f05-74f17acd7666
# ╠═46b735ae-da25-4d9f-b66b-f0ff8fe8ba4f
# ╠═fc1dff98-c9e2-49e4-bbee-5bdcc29eb2a5
# ╠═4c3b6443-a307-42be-ba92-55cb1f9c415f
# ╠═3708d079-a423-4129-b288-3a09fea75a45
# ╠═86c60693-9ffb-4dd1-b778-d22902db9fe1
# ╠═ab68755c-f4f9-491c-b3a6-e907af264f0f
# ╠═cb1c71de-dc67-4758-96aa-78f206fe2c3c
# ╠═6101146e-60c9-4480-a650-956d15deade7
# ╠═fba07f73-c3a6-4e53-8afa-7ef34e8f4864
# ╠═3668ef67-701e-49a2-b4fa-2a3ecadc3108
# ╠═e255b6bb-c6c2-4012-a222-e3baa5b44387
# ╠═d1e29c9d-915d-482e-842a-4eeff3c217e9
# ╠═5d069e14-00e3-427a-bc0d-e082e8e6ea87
# ╠═06bcca94-1442-4247-8fc6-b7d0de18c512
# ╠═e62bbe8c-e1f2-48a9-a4e8-3fd76f2faca8
# ╠═f0842b41-cff3-4704-a3f8-9c89def68c4d
# ╠═42adcb63-016b-4c61-a504-e26b0658e9aa
# ╠═cc0586a5-d57f-477d-a25e-85ecfecd2308
# ╠═b9f2fccc-3a58-46d6-860a-31c6e79f819b
# ╠═178c4302-ded1-44bf-a8dc-85f9098b1692
# ╠═dd31115b-ee6d-4ce9-bf69-e04590440019
# ╠═e95c98c1-480b-4729-b1f4-0c29531781f3
# ╠═91cd130f-0005-492b-970f-72490acea456
# ╠═1bbabc8f-bfb5-4ce8-8ba7-944e575d0259
# ╠═48be8908-26f6-44e7-95d5-6eb3a12512a7
# ╠═d8ecb3aa-d187-4a43-ac87-eeb517a46afd
# ╠═8290e987-4925-423f-9b40-b44b9ad36a20
# ╠═8e0baf7f-2209-4c57-bf34-2a1f97fc72e4
# ╠═43a7fd93-60da-49de-a0c4-acde65341829
# ╠═280e28cd-ed29-435b-a82e-0674b52d2a67
# ╠═827c7116-f1d4-4a77-b1f5-582ce4cf9276
# ╠═c489e9c8-1f13-4196-ae46-bed5a173b490
# ╠═946c6610-6b25-4075-b786-a52cbf98c9bb
# ╠═e778738a-7a84-4b44-9bac-be3530f3ec9a
# ╠═3a5a6db7-7cca-438b-a1ee-7042acb8d52f
# ╠═e90cf612-82c1-449f-95ab-646098d8c248
# ╠═d3dd4de9-05cf-4453-929a-5670a863d761
# ╠═acdb3d54-2b77-497f-9b48-4875e522d547
# ╠═1efb408a-aef3-4303-8a02-cccb96154e80
# ╟─3d4aaa27-eeeb-4432-9c26-36f7e4de636c
# ╠═834ff3fd-20d7-4158-8463-4d35d93712ef
# ╠═1fac792a-125d-4e36-bfae-8f8bd0806cae
# ╠═c0057b1c-590e-4375-884e-be0b55b6c433
# ╠═1ef20282-1b52-419f-91dd-4117c35c5b3e
# ╠═ce9d0d7f-dda3-43f9-83a4-8c06fc0d7d6d
# ╠═41992a56-669a-4fde-8e08-20aa8dbcd8ee
# ╠═0027f817-380f-4470-8b97-acc3d663d5bf
# ╠═43e709f5-977a-4f2a-920c-48cf4065380e
# ╠═1baff40f-453b-4531-b332-8df25c8cefa4
# ╠═15e01f9d-b284-4f31-8b01-c74a98de1e63
# ╠═8a8e4cb4-543b-4a4f-bd89-40ab7b5e3d33
# ╠═89f16ae7-bb94-4d27-8e30-38533e725e04
# ╠═7ce2b6ff-2442-4dbc-ab5f-44df24ca86e2
# ╠═b9ecbda1-1f85-4511-a178-14636b27e69f
# ╠═dec084f7-b78a-432f-acfd-a32b5eeefd68
# ╠═19138cb1-4f97-4989-a2b2-024bff14bb33
# ╠═4c283f70-2ef3-40cd-bf53-a6b0883415da
# ╠═1ff6f910-6603-4515-9492-27111a89a72a
# ╠═c0516302-8bb0-4926-9b07-a88bf99cfc96
# ╠═6d4c1bd7-e246-4918-a2f1-d147e3949a47
# ╠═38854256-3534-43ff-a1c3-61b912eb3951
# ╠═69405850-755e-4b75-95fb-f82598da07f7
# ╠═6bba40ab-a50c-43f1-85f8-baaa0da10e8b
# ╠═5e192103-db4e-4916-b33d-40f6d313f8ca
# ╠═73875c2f-0cf4-47b6-924f-811f98983d6f
# ╠═05a1e019-be50-4199-9397-ab3828f234fa
# ╠═48575b78-2035-45ee-8ce9-5c3734a291a6
# ╠═454a9c6f-0f3b-4f80-998a-91d4fa3c3333
# ╠═7125b9fe-b9f1-4d5b-82f4-9e4e93fd4d24
# ╠═54092455-89f9-4234-926f-2186d9cbdadb
# ╠═575484fc-b15a-433b-8cf7-2c674320eefb
# ╠═db6943a1-b4c8-46bb-8028-6030c4fb615b
# ╠═8257080a-0aa8-4eeb-8374-d1a26143957b
# ╠═87d6b60a-32f0-4970-95b0-0f9d5913717e
# ╠═e3d33848-2f6a-475f-8ec8-ed2f8f117859
# ╠═2e82f4b1-962d-4b1e-b06b-15f2ddbfbdf4
# ╠═29ba0094-e723-4579-a385-35b9bfc11ad0
# ╠═efa17182-4ceb-48de-b8c2-83385131c1ba
# ╠═04dfa6bb-9b35-40d2-a7d2-9716a79f3952
# ╠═8bfb51a6-7d80-442b-8e88-cdabcdf42efc
# ╠═648bc2bf-6467-4ce5-8b65-23fe04c89ea5
# ╠═6289eb5a-63ca-4f83-913f-9dbfb2a1e8d6
# ╠═c08d36ab-5a7e-4116-97ad-20a9b34bd156
# ╠═f4ad0e81-c0e0-4e31-a7ca-f9642fcf7aeb
# ╠═58160d7f-1f6b-47e5-bac1-38bc03d0fe3c
# ╠═37b6e06e-1972-4b8a-add1-fd928fa0bfe6
# ╠═9961d280-bb5d-4216-a1f0-e8e33ff0a9cf
# ╠═b9d60526-b48a-4865-9eb9-9dcdca5180c8
# ╠═f67d7def-fa5d-4132-9b18-dfd1200c4910
# ╠═816a4bcc-443f-4382-a1b6-0ca020f0567c
# ╠═bb15bfcc-50f6-45cf-9098-d361bf9dbc72
# ╠═7524dbb5-cfe6-441a-8f47-a132e692129d
# ╠═c96cca1e-eeab-4a2b-8920-7136ebde750a
# ╠═515f938a-46e3-4a14-80fd-a20a88ded4b0
# ╠═0f9df66c-7ea7-45b8-a983-f33f3b5eb480
# ╠═7440478a-8218-4822-8d61-a57cfcaa6ada
# ╠═0e2431c5-edd8-42e3-914b-4ad962e75f3f
# ╠═a1a5113c-73aa-4468-98ed-84f5e1133f2a
# ╠═17df65a0-5d6a-49c3-a7c8-7b4a832dc9fd
# ╠═dca8011f-b75b-4baa-a2d8-b9ea2da049d7
# ╠═16d4b484-6872-47ad-9013-8c065104b095
# ╠═0fc733c7-43d4-4643-a196-0ef8a46bdbe9
# ╠═9f3b8782-5667-4c48-974a-4f87221acd54
# ╠═61e7f77b-f434-4fdc-9b01-c93a267847e2
# ╠═9ada7faf-a14a-4dfb-8642-29ccb22c4555
# ╠═3268157b-fb95-4162-9d8d-affad6bdbc8d
# ╠═a7c92808-ba43-40ae-8fac-d3fc56711651
# ╠═7ab0a6b1-62b7-4a58-a733-cf3cf2068257
# ╠═e08b711b-d2e9-46c1-999e-bab698112485
# ╠═22bb9f1b-ce6d-4aa7-a548-5774410d4d65
# ╠═386562a1-e63e-4aa6-8c92-42215c408776
# ╠═3ae39779-a359-492f-ac1d-62844f6bd974
# ╠═6cf73ad2-8326-4a90-b9d4-ee0b0a4e797d
# ╠═5fe1fdaa-e9ba-4d79-bacd-52617dd37239
# ╠═5f2eaa97-7c3e-4141-8656-c75dd2d873a1
# ╠═11ab5eb2-7330-4987-bd49-0b461051c618
# ╠═2094fcd9-348a-44fa-bcaf-654812006bd4
# ╠═49e904d1-b488-428e-89fd-5ccb1b6a41fc
# ╠═c25c61d7-e981-473d-8991-5be5918b83ae
# ╠═8f174999-76ae-4d29-a922-cb9b5f0f4422
# ╠═997a6ebf-00e1-47aa-8779-61e917231eeb
# ╠═bdd69ae7-8e40-41c1-aa73-fa7c416c23ad
# ╠═e5aa4101-2bae-4cd7-b29d-977d2591fea0
# ╠═fd23fbf9-2952-4477-afc9-9ccf6501e492
# ╠═a22d085e-0b32-4ec9-adf7-2b4fee73e9ce
# ╠═affdfd9a-7acb-4d62-9684-cf5674d7b7a9
# ╠═6055259b-bb51-486d-b4f3-33bd108bf960
# ╠═cd834464-5289-4df1-b03e-7707fb1c217b
# ╠═a8ca1efd-2f49-4e76-a109-2d80cd59da5a
# ╠═d67baa37-d7b2-474c-90be-7e5f45a2db6e
# ╠═95271c47-5318-4390-88c7-57c2927fa8c9
# ╠═c22e842f-59c7-44ad-ab26-868fff32c851
# ╠═aa05d65f-0fa4-43da-8b0c-c7f82886364e
# ╠═9e962dfc-729d-4928-ad16-af1369a53cbe
# ╠═7b8ef850-8b81-4a36-81c5-81cf9723eb5f
# ╠═5e92d4be-384a-40ef-9cdb-1278de250d88
# ╠═ecac1c1f-dca5-4e58-a39a-487da20b4d4f
# ╠═757872c1-5f00-4ee4-a329-e9539ec30d56
# ╠═3ce03175-f583-4fe2-9a61-e76286e9636f
# ╠═62fa7209-e820-4497-b807-302d8ca15aac
# ╠═d02cf0bc-753a-4d5e-99f6-260851153bd8
# ╠═82525124-c641-4f3a-82b0-499174f2216d
# ╠═3a1aa072-baee-4be6-8bc6-562aeefcf4ed
# ╠═77a4be6b-7112-4fab-a096-ce2d4e29a604
# ╠═8137e129-dd58-4b15-9cbf-eec86c4df6b1
# ╠═38cc5906-c24b-419d-8621-57ecd6838e1a
# ╠═242b487c-ecc1-4cef-a511-d439ef2f6a31
# ╠═4a8dac4c-a0b9-4771-ae9a-3e3d54fecb7f
# ╠═188605ed-8c1b-4751-9124-2bf30603016a
# ╠═f9c05cea-488e-4312-9fde-109d2fd3083f
# ╠═46c46a54-dff0-4fcb-9dbd-7e4c70e1034d
# ╠═1b87d004-9ade-495c-ae18-c898c8107f2f
# ╠═9db6b4f9-48f4-4557-a2ff-a87af403742b
# ╠═dc8a331f-4c4b-4821-ab6a-de556b7f955b
# ╠═34260232-cff5-4e49-b7ce-180d2c912cbd
# ╠═d4845122-1878-43e3-aa3f-a492c2eaed3f
# ╠═bc229008-aed0-4bb3-8367-0b798711c7f3
# ╠═f04803ff-c6a7-482c-b21d-4f7897ec3871
# ╠═b93dcc53-7088-4f5e-ba75-89d212ada74d
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
