---
title: 'Resolve Assignment: Caching the Inverse of a Matrix'
author: "Esther Gutierrez"
date: "February 6, 2016"
output: html_document
---


```{r}
# create a *square* matrix (because `solve` only handles square matrices)
# create the matrix during the call of makeCacheMatrix()
a <- makeCacheMatrix( matrix(c(1,2,3,4), nrow = 2, ncol = 2) );

summary(a);
```

Print the matrix:

```{r}
a$getMatrix();
     [,1] [,2]
[1,]    1    3
[2,]    2    4
```

The inverse of the matrix:

```{r}
cacheSolve(a)
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5
```

Whe you run the code for the second time, we get the cached value of a

```{r}
 cacheSolve(a)
getting cached data
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5
```

The matrix also can be created after calling a ``makeCacheMatrix`` without arguments:

```{r}
# call makeCacheMatrix without arguments
b <- makeCacheMatrix();

#summary(b)

b$setMatrix( matrix(c(1,2,3,4), nrow = 2, ncol = 2) );
b$getMatrix();

cacheSolve(b)


The 2nd time we get the cached value
cacheSolve(b)

```

