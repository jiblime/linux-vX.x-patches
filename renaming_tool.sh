#!/bin/bash

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

the_order_of_these_patches_dont_make_any_sense_why_did_they_name_them_like_this()
{
	for (( wtf=1; wtf<10; wtf++ )); do
		rename ".${wtf}-" ".0${wtf}-" *
	done
}

decomp && remove && append
the_order_of_these_patches_dont_make_any_sense_why_did_they_name_them_like_this
