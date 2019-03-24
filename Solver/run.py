import solver


def solve_cube(situ='DUUBULDBFRBFRRULLLBRDFFFBLURDBFDFDRFRULBLUFDURRBLBDUDL'):
	cube_solution = solver.solve(situ).strip()
	f = open('cube_solution.txt', 'w')
	f.truncate()
	f.write(cube_solution)
	f.close()
	print("Solution saved at cube_solution.txt")


if __name__ == '__main__':
	s = input('Input your cube identification.\n(P.S.:Do not put any quote marks)\nYour input here: ')
	s = s.upper().strip()
	solve_cube()
	# solve_cube(s)
	fh = open("cube_solution.txt")
	print(fh.read())
