#!/bin/bash

# todo
# use file check to determine if a function is needed
# use width check or append 00* to all

decomp()
{
	xz -df *xz
}

remove()
{
	rename "patch-" "" *[0-9]
}

append()
{
	for f in [0-9]*; do
		mv "${f}" "${f}.patch"
	done
}

the_order_of_these_patches_could_be_better()
{
	for (( checkfor3digits=1; checkfor3digits<10; checkfor3digits++ )); do
		rename ".${checkfor3digits}-" ".0${checkfor3digits}-" *
	done
}

decomp && remove && append
the_order_of_these_patches_could_be_better
