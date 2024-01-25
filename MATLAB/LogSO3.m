function so3 = LogSO3( R )
% ===========================================================================
% Descriptions
% ------------
%    Logarithmic Map of SO3
% 
% Parameters
% ----------
%   (1) R: An SO3 matrix
%   (2) ths: Threshold
% 
% Returns
% -------
%   (1) so3: the skew-symmetric part
%
% ===========================================================================

assert( is_SO3( R ) );

% First, need to check whether 
assert( abs( trace( R ) + 1 ) >= eps );
theta = acos( 0.5 * ( trace( R ) - 1 ) );

if theta <= eps
    so3 = zeros( 3, 3 );
else
    so3 = theta/( 2 * sin( theta ) ) * ( R - R' );
end

end