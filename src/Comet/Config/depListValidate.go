package config

import "sort"

func sortDepList(depList []string) {
	sort.Slice(depList, func(i, j int) bool {
		return depList[i] < depList[j]
	})
}
