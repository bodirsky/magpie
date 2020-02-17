p32_land(t,j,type32,ac) = v32_land.l(j,type32,ac);

*#################### R SECTION START (OUTPUT DEFINITIONS) #####################
 ov_cost_fore(t,i,"marginal")                  = vm_cost_fore.m(i);
 ov32_land(t,j,type32,ac,"marginal")           = v32_land.m(j,type32,ac);
 ov_landdiff_forestry(t,"marginal")            = vm_landdiff_forestry.m;
 ov32_land_expansion(t,j,type32,ac,"marginal") = v32_land_expansion.m(j,type32,ac);
 ov32_land_reduction(t,j,type32,ac,"marginal") = v32_land_reduction.m(j,type32,ac);
 ov_cdr_aff(t,j,ac,"marginal")                 = vm_cdr_aff.m(j,ac);
 oq32_cost_fore_ac(t,i,"marginal")             = q32_cost_fore_ac.m(i);
 oq32_land(t,j,"marginal")                     = q32_land.m(j);
 oq32_cdr_aff(t,j,ac,"marginal")               = q32_cdr_aff.m(j,ac);
 oq32_carbon(t,j,ag_pools,"marginal")          = q32_carbon.m(j,ag_pools);
 oq32_land_diff(t,"marginal")                  = q32_land_diff.m;
 oq32_land_expansion(t,j,type32,ac,"marginal") = q32_land_expansion.m(j,type32,ac);
 oq32_land_reduction(t,j,type32,ac,"marginal") = q32_land_reduction.m(j,type32,ac);
 oq32_max_aff(t,"marginal")                    = q32_max_aff.m;
 oq32_aff_pol(t,j,"marginal")                  = q32_aff_pol.m(j);
 ov_cost_fore(t,i,"level")                     = vm_cost_fore.l(i);
 ov32_land(t,j,type32,ac,"level")              = v32_land.l(j,type32,ac);
 ov_landdiff_forestry(t,"level")               = vm_landdiff_forestry.l;
 ov32_land_expansion(t,j,type32,ac,"level")    = v32_land_expansion.l(j,type32,ac);
 ov32_land_reduction(t,j,type32,ac,"level")    = v32_land_reduction.l(j,type32,ac);
 ov_cdr_aff(t,j,ac,"level")                    = vm_cdr_aff.l(j,ac);
 oq32_cost_fore_ac(t,i,"level")                = q32_cost_fore_ac.l(i);
 oq32_land(t,j,"level")                        = q32_land.l(j);
 oq32_cdr_aff(t,j,ac,"level")                  = q32_cdr_aff.l(j,ac);
 oq32_carbon(t,j,ag_pools,"level")             = q32_carbon.l(j,ag_pools);
 oq32_land_diff(t,"level")                     = q32_land_diff.l;
 oq32_land_expansion(t,j,type32,ac,"level")    = q32_land_expansion.l(j,type32,ac);
 oq32_land_reduction(t,j,type32,ac,"level")    = q32_land_reduction.l(j,type32,ac);
 oq32_max_aff(t,"level")                       = q32_max_aff.l;
 oq32_aff_pol(t,j,"level")                     = q32_aff_pol.l(j);
 ov_cost_fore(t,i,"upper")                     = vm_cost_fore.up(i);
 ov32_land(t,j,type32,ac,"upper")              = v32_land.up(j,type32,ac);
 ov_landdiff_forestry(t,"upper")               = vm_landdiff_forestry.up;
 ov32_land_expansion(t,j,type32,ac,"upper")    = v32_land_expansion.up(j,type32,ac);
 ov32_land_reduction(t,j,type32,ac,"upper")    = v32_land_reduction.up(j,type32,ac);
 ov_cdr_aff(t,j,ac,"upper")                    = vm_cdr_aff.up(j,ac);
 oq32_cost_fore_ac(t,i,"upper")                = q32_cost_fore_ac.up(i);
 oq32_land(t,j,"upper")                        = q32_land.up(j);
 oq32_cdr_aff(t,j,ac,"upper")                  = q32_cdr_aff.up(j,ac);
 oq32_carbon(t,j,ag_pools,"upper")             = q32_carbon.up(j,ag_pools);
 oq32_land_diff(t,"upper")                     = q32_land_diff.up;
 oq32_land_expansion(t,j,type32,ac,"upper")    = q32_land_expansion.up(j,type32,ac);
 oq32_land_reduction(t,j,type32,ac,"upper")    = q32_land_reduction.up(j,type32,ac);
 oq32_max_aff(t,"upper")                       = q32_max_aff.up;
 oq32_aff_pol(t,j,"upper")                     = q32_aff_pol.up(j);
 ov_cost_fore(t,i,"lower")                     = vm_cost_fore.lo(i);
 ov32_land(t,j,type32,ac,"lower")              = v32_land.lo(j,type32,ac);
 ov_landdiff_forestry(t,"lower")               = vm_landdiff_forestry.lo;
 ov32_land_expansion(t,j,type32,ac,"lower")    = v32_land_expansion.lo(j,type32,ac);
 ov32_land_reduction(t,j,type32,ac,"lower")    = v32_land_reduction.lo(j,type32,ac);
 ov_cdr_aff(t,j,ac,"lower")                    = vm_cdr_aff.lo(j,ac);
 oq32_cost_fore_ac(t,i,"lower")                = q32_cost_fore_ac.lo(i);
 oq32_land(t,j,"lower")                        = q32_land.lo(j);
 oq32_cdr_aff(t,j,ac,"lower")                  = q32_cdr_aff.lo(j,ac);
 oq32_carbon(t,j,ag_pools,"lower")             = q32_carbon.lo(j,ag_pools);
 oq32_land_diff(t,"lower")                     = q32_land_diff.lo;
 oq32_land_expansion(t,j,type32,ac,"lower")    = q32_land_expansion.lo(j,type32,ac);
 oq32_land_reduction(t,j,type32,ac,"lower")    = q32_land_reduction.lo(j,type32,ac);
 oq32_max_aff(t,"lower")                       = q32_max_aff.lo;
 oq32_aff_pol(t,j,"lower")                     = q32_aff_pol.lo(j);
*##################### R SECTION END (OUTPUT DEFINITIONS) ######################