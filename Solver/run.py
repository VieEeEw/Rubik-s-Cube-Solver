import solver


def solve_cube(situ='DUUBULDBFRBFRRULLLBRDFFFBLURDBFDFDRFRULBLUFDURRBLBDUDL'):
	cube_solution_raw = solver.solve(situ).strip()
	cube_solution = str()
	for pro in cube_solution_raw.split():
		if len(pro) > 1:
			i = 0
			while i < int(pro[1]):
				cube_solution += pro[0]
				cube_solution += ' '
				i += 1
		else:
			cube_solution += pro[0]
	f = open('cube_solution.txt', 'w')
	f.truncate()
	f.write(cube_solution)
	f.close()
	print("Solution saved at cube_solution.txt")


if __name__ == '__main__':
	s = input('Input your cube identification.\n(P.S.:Do not put any quote marks)\nYour input here: ')
	s = s.upper().strip()
	# solve_cube()
	solve_cube(s)
	fh = open("cube_solution.txt")
	print(fh.read())
