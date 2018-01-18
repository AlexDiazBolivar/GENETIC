% Copyright 2018 ONERA
%
% This file is part of the GENETIC project.
%
% GENETIC is free software: you can redistribute it and/or modify
% it under the terms of the GNU Lesser General Public License version 3 as
% published by the Free Software Foundation.
%
% GENETIC is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU Lesser General Public License for more details.
%
% You should have received a copy of the GNU Lesser General Public License
% along with GENETIC.  If not, see <https://www.gnu.org/licenses/lgpl-3.0>.
%
function [xopt, fopt, info] = max(fun, xDim, method, varargin)
% GENETIC.MAX is the interface for maximisation in Genetic. 
% It can be used as <a href="matlab: help genetic.min">genetic.min</a>.
fun                  = @(x) -fun(x);
[xopt, fopt, info]   = genetic.min(fun, xDim, method, varargin{:});
fopt                 = -fopt;
end
