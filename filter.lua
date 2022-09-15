local dot_path = os.getenv("DOT") or "dot"

local function dot(code)
	return pandoc.pipe(dot_path, {"-Tsvg"}, code)
end

function CodeBlock(block)
	if block.classes[1] == "dot-image" then
		local success, img = pcall(dot, block.text)

		if not success then
			io.stderr:write(tostring(block.text) .. "\n")
			io.stderr:write(tostring(img) .. "\n")
			error "dot to svg failed"
		end

		return pandoc.RawBlock("html", img)
	end
end
