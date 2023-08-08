function showdirs(dirs)
%SHOWDIRS shows a set of directions.
%
%   SHOWDIRS(dirs) shows the N directions provided by the N-by-3 matrix
%   dirs and allows instant rotation using the arrow keys or mouse.
%   The provided directions are shown as green filled circles, their
%   opposites as red asterisks.
%
%   Originally written by Thijs Dhollander (24/02/2015)

 figure('color','k'); hold on; axis off;
 [X,Y,Z] = sphere(42);
 surf(X*0.98,Y*0.98,Z*0.98,'FaceColor','blue','FaceLighting','gouraud','SpecularStrength',0,'LineStyle','none');
 
 nn = hypot(hypot(dirs(:,1),dirs(:,2)),dirs(:,3));
 dirsn = dirs./repmat(nn,1,3);
 scatter3(dirsn(:,1),dirsn(:,2),dirsn(:,3),'go','filled');
 scatter3(-dirsn(:,1),-dirsn(:,2),-dirsn(:,3),'r*');
 
 axis([-1 1 -1 1 -1 1]); axis vis3d;
 view(0,0); camlight(45,45);
 rotate3d;

end