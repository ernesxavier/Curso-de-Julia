### A Pluto.jl notebook ###
# v0.20.3

using Markdown
using InteractiveUtils

# ╔═╡ 057a2be0-a169-11ef-3717-df8e196b30cd
md"""
# Flujo de Control 
"""

# ╔═╡ 75622d17-3b9d-4e25-a142-77551214b75c
TableOfContents(title="Contenido")

# ╔═╡ 733ab6dd-6888-4367-9a56-f6b052fc55eb
md"""
## Condicionales

Los condicionales evaluan expresiones booleanas
"""

# ╔═╡ 4b367b6a-68e9-4fe0-be1e-b87f9d19c5da
begin 
	a = 1
	b = 2
	c = 3
	d = 2
end

# ╔═╡ c69fc834-8321-4596-81f2-e962317858a2
a

# ╔═╡ f065e082-6b74-4d41-870f-6e8f77f9bf6b
b

# ╔═╡ 4346f444-4de9-43dc-a1ed-dffc8c7a36ed
c

# ╔═╡ a159ea9a-2e24-40b2-b70f-8fb0ad013d67
d

# ╔═╡ 2d7a344c-249e-4408-a81f-5da5cb668dd5
if a > b 
	println("$a es mayor que $b")
end 

# ╔═╡ a408e0da-c58b-4617-9035-5258b5acd300
if a < b 
println("$a es mayor que $b")
end 

# ╔═╡ 160597f5-d61f-41f6-a662-ddab0d735b49
if a > b 
println("$a es mayor que $b")
else 
println("$a es menor que $b")	
end 

# ╔═╡ 8b901650-64c9-4653-a2b7-5f99e3a4361f
if a > b 
println("$a es mayor que $b")
elseif d == b 
println("$d es igual $b")	
else 
println("$a es menor que $b")	
end 

# ╔═╡ 67c837ac-7f59-4aaa-a8d2-d93e30b7a35a
if a < b && b < c
	println("$c es mayor que $b y $b es mayor que $a")
else 
	println("$a es menor que $b")	
end

# ╔═╡ 967c68c8-894e-4487-911d-e23ad28e1a26
xx =  a < b && b < c

# ╔═╡ 852f371a-24c6-4aae-be07-d22e547a2088
if xx
	println("$c es mayor que $b y $b es mayor que $a")
else 
	println("$a es menor que $b")	
end

# ╔═╡ 6a366959-077d-4de2-90f8-801731c73802
if a > b 
	a + b
else c < d  
	a - b
end 

# ╔═╡ de89b451-e7de-4034-b01b-dea08d59888c
md"""
### Forma abreviada

`regla que evaluo como verdadera ? lo que quiero que haga si es verdadero : lo que hace si es falso`
"""

# ╔═╡ 6f4d794a-84c9-46d2-be7a-c3980fea2dba
if a > b 
println("$a es mayor que $b")
else 
println("$a es menor que $b")	
end 

# ╔═╡ bf37f65b-ee75-4f23-9107-67b5211efe00
a > b ? println("$a es mayor que $b") : println("$a es menor que $b")

# ╔═╡ 3d4aa103-e600-4a06-a7be-e9a5087dc857
a > b ? a +b : a-b

# ╔═╡ e36d28ac-88a9-4d93-9614-a24888e71f29
a < b ? c * d : d * b

# ╔═╡ 519c9f2d-e1ca-4fd2-8b84-39baa1f74084
md"""
## Bucles (loops)
"""

# ╔═╡ f5e7d6c2-adda-4c12-b85a-6dbf1c245794
md"""
### `while`
"""

# ╔═╡ 4f9d7e50-d3f9-4a95-a9d0-2ee6de283a49
i = 1

# ╔═╡ d7effc4b-592c-4622-952c-e994e0c683f8
while i <= 10
	println(i)
	i += 1 #(i= i + 1)
end

# ╔═╡ 54ea9da4-f23c-40d7-b0df-b52879482d0a
while i < 10
	println(i)
	i += 1 #(i= i + 1)
end

# ╔═╡ 0b97d957-3c4e-4c61-8a2a-f68f0d747ce4
while i < 5
	println(i)
	i += 0.1 #(i(t+1)= i(t) + 1)
end

# ╔═╡ fd6a34f3-f859-4da5-be69-2be353df66db
while i <= 5
	println(i)
	i += 0.1 #(i(t+1)= i(t) + 1)
end

# ╔═╡ 6ff9ffe0-71eb-4d17-a3bf-8dba90833b88
while i <= 5000
	println(i)
	i += 1 #(i(t+1)= i(t) + 1)
end

# ╔═╡ 7679cb21-3abf-48a6-bbf7-36d1b0c5d6ae
i

# ╔═╡ 60af22da-6f69-428c-a06f-e5fb7c14913e
while true 
	println(i)

	if i >=15 
		break
	end

	i += 3
end

# ╔═╡ b5609886-dcd2-4a2d-bfc8-9a4c6243b046
j = 1

# ╔═╡ de266f14-fce3-4de7-a0b8-f2c3bc451d33
begin
while j < 5
	println(j)
	j += 0.1 #(i(t+1)= i(t) + 1)
end
end

# ╔═╡ ca673c7a-ba46-4f6b-850a-b47af62c0483
j

# ╔═╡ 7d9e17f6-4a5c-4a4c-9382-571518433e8a
while i <= 10
	println(i)
	i += 1 #(i= i + 1)
end

# ╔═╡ c3390ea9-b6fb-462b-97f2-a40128e65727
md"""
### `for`
"""

# ╔═╡ b2075cc2-def9-48b5-b5b3-d062eb80bc73
for i in 1:10
	println(i)
end

# ╔═╡ c72639b3-f529-4a30-bab9-66e7e762bf33
k

# ╔═╡ 3b6fea22-17ea-4038-866f-1e895daebfd3
for k in 5:25
	println(k)
end

# ╔═╡ f44013ce-78ab-490d-91e7-6c52895a624c
for k in 5:5:25
	println(k)
end

# ╔═╡ 06fbeeb6-5c80-4288-8cba-840bc5d36659
for j in -10:10
	println(j)
end

# ╔═╡ b7258910-7cb4-4776-9c07-6f221f25a7a4
for h in 10:-1:1
	println(h)
end

# ╔═╡ 4afa210f-2486-439e-a85c-e54b134433d7
for caracteres in 'a':'z'
	println(caracteres)
end

# ╔═╡ b1db367d-2cdd-4e54-8e1a-f0e8eff98c6c
for caracteres in 'z':-1:'a'
	println(caracteres)
end

# ╔═╡ 135dcad3-c174-445b-84cf-2d70243eee5d
for caracteres in 'z':-5:'a'
	println(caracteres)
end

# ╔═╡ bc95174d-efee-4cbe-93c1-098cf96b0d25
for griego in 'α':'ω'
	println(griego)
end

# ╔═╡ 2b05f4c0-831d-4120-8167-14a20d52b45b
a

# ╔═╡ 0c9aafab-1320-4d4c-8366-4193fbb0ce27
x = 25

# ╔═╡ 16426885-efe5-418c-b577-7a15bbecda42
for i in a:x
	println(i)
end

# ╔═╡ 7a042c9a-da62-4ae5-b46a-f42ec19ba1d3
T = 200

# ╔═╡ c82f84fe-b23e-4c4a-867f-8a65da18c2d0
for i in 1:10:T
	println(i)
end

# ╔═╡ 248119e0-b58f-4c0b-9709-3e5d4b08b9d9
for i in 0:10:T
	println(i)
end

# ╔═╡ 129310ca-4b22-4300-8202-8c40cd52d16a
M = rand(10, 10)

# ╔═╡ 5b88f164-a77f-4208-b699-7ea03e02255f
CV = M[:]

# ╔═╡ e2d74730-925f-46a1-b7e1-9eb4ef2d1193
V = zeros(length(CV))

# ╔═╡ c89f8e50-7003-44c1-8e05-16bf4285c10d
CV[1]

# ╔═╡ 3be8783e-d09e-4035-8f66-1e4ef8f550fc
CV[2]

# ╔═╡ f892039e-1e24-491e-8e64-2093a481cb80
CV[end]

# ╔═╡ f6a90c9e-fefd-4c42-a2d9-8ef80c144b08
for i in 1:length(CV)
	V[i] = CV[i] + 1
end

# ╔═╡ d9b861f4-2264-4b08-9cd2-e9c2db8592ed
V

# ╔═╡ 2338cef2-85bd-49c0-b71b-5bbf047a7d61
V[1]

# ╔═╡ ed95b586-ba39-4dba-8b9d-e5c7cbae320c
CV[1]

# ╔═╡ 961b007e-0e65-4c14-96a5-65fdfb541a9d
V[begin]

# ╔═╡ 998fafb7-c9e1-4752-9d4c-30260890eb3d
CV[begin]

# ╔═╡ 62608571-5718-4ac2-938c-daab6e7f74b2
V[end]

# ╔═╡ bda98bf2-d08e-431e-b446-3497b64a8312
CV[end]

# ╔═╡ 4af04eb1-83d4-47cf-82c5-8a9ec361129d
CV .+ 1

# ╔═╡ b076df1d-a65c-4f57-a84c-122a610554fc
for i ∈ eachindex(CV)
	V[i] = CV[i] + V[i]
end

# ╔═╡ a8aeefa5-ce04-4e55-893e-70c1e3af7864
V

# ╔═╡ 81b71348-5521-43c8-a65e-1d3a54ec70e9
M_1 = []

# ╔═╡ 2d061248-0b43-49f3-90d1-d6ddf1531630
M_2 = zeros(15)

# ╔═╡ cf1f5d07-c292-45ad-92fc-e0e26a285744
for j in 1: 15
	push!(M_1, j)
end

# ╔═╡ a96de136-28a8-479d-8bfe-cb905ed1a0ab
M_1

# ╔═╡ 2076e44b-a7fc-4da0-9f84-2a966085b413
using PlutoUI, Random

# ╔═╡ 6ccc7d21-2131-4257-a068-19fbdfb11883
using Random

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
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
project_hash = "e45666ed30782c8fd1550db7cea15edcfb847699"

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
# ╠═057a2be0-a169-11ef-3717-df8e196b30cd
# ╠═2076e44b-a7fc-4da0-9f84-2a966085b413
# ╠═75622d17-3b9d-4e25-a142-77551214b75c
# ╠═733ab6dd-6888-4367-9a56-f6b052fc55eb
# ╠═4b367b6a-68e9-4fe0-be1e-b87f9d19c5da
# ╠═c69fc834-8321-4596-81f2-e962317858a2
# ╠═f065e082-6b74-4d41-870f-6e8f77f9bf6b
# ╠═4346f444-4de9-43dc-a1ed-dffc8c7a36ed
# ╠═a159ea9a-2e24-40b2-b70f-8fb0ad013d67
# ╠═2d7a344c-249e-4408-a81f-5da5cb668dd5
# ╠═a408e0da-c58b-4617-9035-5258b5acd300
# ╠═160597f5-d61f-41f6-a662-ddab0d735b49
# ╠═8b901650-64c9-4653-a2b7-5f99e3a4361f
# ╠═67c837ac-7f59-4aaa-a8d2-d93e30b7a35a
# ╠═967c68c8-894e-4487-911d-e23ad28e1a26
# ╠═852f371a-24c6-4aae-be07-d22e547a2088
# ╠═6a366959-077d-4de2-90f8-801731c73802
# ╠═de89b451-e7de-4034-b01b-dea08d59888c
# ╠═6f4d794a-84c9-46d2-be7a-c3980fea2dba
# ╠═bf37f65b-ee75-4f23-9107-67b5211efe00
# ╠═3d4aa103-e600-4a06-a7be-e9a5087dc857
# ╠═e36d28ac-88a9-4d93-9614-a24888e71f29
# ╠═519c9f2d-e1ca-4fd2-8b84-39baa1f74084
# ╠═f5e7d6c2-adda-4c12-b85a-6dbf1c245794
# ╠═4f9d7e50-d3f9-4a95-a9d0-2ee6de283a49
# ╠═d7effc4b-592c-4622-952c-e994e0c683f8
# ╠═54ea9da4-f23c-40d7-b0df-b52879482d0a
# ╠═0b97d957-3c4e-4c61-8a2a-f68f0d747ce4
# ╠═fd6a34f3-f859-4da5-be69-2be353df66db
# ╠═6ff9ffe0-71eb-4d17-a3bf-8dba90833b88
# ╠═7679cb21-3abf-48a6-bbf7-36d1b0c5d6ae
# ╠═60af22da-6f69-428c-a06f-e5fb7c14913e
# ╠═b5609886-dcd2-4a2d-bfc8-9a4c6243b046
# ╠═de266f14-fce3-4de7-a0b8-f2c3bc451d33
# ╠═ca673c7a-ba46-4f6b-850a-b47af62c0483
# ╠═7d9e17f6-4a5c-4a4c-9382-571518433e8a
# ╠═c3390ea9-b6fb-462b-97f2-a40128e65727
# ╠═b2075cc2-def9-48b5-b5b3-d062eb80bc73
# ╠═c72639b3-f529-4a30-bab9-66e7e762bf33
# ╠═3b6fea22-17ea-4038-866f-1e895daebfd3
# ╠═f44013ce-78ab-490d-91e7-6c52895a624c
# ╠═06fbeeb6-5c80-4288-8cba-840bc5d36659
# ╠═b7258910-7cb4-4776-9c07-6f221f25a7a4
# ╠═4afa210f-2486-439e-a85c-e54b134433d7
# ╠═b1db367d-2cdd-4e54-8e1a-f0e8eff98c6c
# ╠═135dcad3-c174-445b-84cf-2d70243eee5d
# ╠═bc95174d-efee-4cbe-93c1-098cf96b0d25
# ╠═2b05f4c0-831d-4120-8167-14a20d52b45b
# ╠═0c9aafab-1320-4d4c-8366-4193fbb0ce27
# ╠═16426885-efe5-418c-b577-7a15bbecda42
# ╠═c82f84fe-b23e-4c4a-867f-8a65da18c2d0
# ╠═7a042c9a-da62-4ae5-b46a-f42ec19ba1d3
# ╠═248119e0-b58f-4c0b-9709-3e5d4b08b9d9
# ╠═6ccc7d21-2131-4257-a068-19fbdfb11883
# ╠═129310ca-4b22-4300-8202-8c40cd52d16a
# ╠═5b88f164-a77f-4208-b699-7ea03e02255f
# ╠═e2d74730-925f-46a1-b7e1-9eb4ef2d1193
# ╠═c89f8e50-7003-44c1-8e05-16bf4285c10d
# ╠═3be8783e-d09e-4035-8f66-1e4ef8f550fc
# ╠═f892039e-1e24-491e-8e64-2093a481cb80
# ╠═f6a90c9e-fefd-4c42-a2d9-8ef80c144b08
# ╠═d9b861f4-2264-4b08-9cd2-e9c2db8592ed
# ╠═2338cef2-85bd-49c0-b71b-5bbf047a7d61
# ╠═ed95b586-ba39-4dba-8b9d-e5c7cbae320c
# ╠═961b007e-0e65-4c14-96a5-65fdfb541a9d
# ╠═998fafb7-c9e1-4752-9d4c-30260890eb3d
# ╠═62608571-5718-4ac2-938c-daab6e7f74b2
# ╠═bda98bf2-d08e-431e-b446-3497b64a8312
# ╠═4af04eb1-83d4-47cf-82c5-8a9ec361129d
# ╠═b076df1d-a65c-4f57-a84c-122a610554fc
# ╠═a8aeefa5-ce04-4e55-893e-70c1e3af7864
# ╠═81b71348-5521-43c8-a65e-1d3a54ec70e9
# ╠═2d061248-0b43-49f3-90d1-d6ddf1531630
# ╠═cf1f5d07-c292-45ad-92fc-e0e26a285744
# ╠═a96de136-28a8-479d-8bfe-cb905ed1a0ab
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
