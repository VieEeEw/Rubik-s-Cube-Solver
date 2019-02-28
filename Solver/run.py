import solver

def solve_cube(solution = 'DUUBULDBFRBFRRULLLBRDFFFBLURDBFDFDRFRULBLUFDURRBLBDUDL'):
	cube_solution_raw = solver.solve(s).strip()
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
	s = input('Input your cube indentification\nDo not put any quote marks\n')