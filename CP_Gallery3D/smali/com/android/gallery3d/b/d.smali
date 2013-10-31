.class public Lcom/android/gallery3d/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final dQ:I = 0x8


# instance fields
.field private mData:[I

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/gallery3d/b/d;->mData:[I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/b/d;->mSize:I

    return-void
.end method


# virtual methods
.method public a([I)[I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 39
    if-eqz p1, :cond_0

    array-length v0, p1

    iget v1, p0, Lcom/android/gallery3d/b/d;->mSize:I

    if-ge v0, v1, :cond_1

    .line 40
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/b/d;->mSize:I

    new-array p1, v0, [I

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/b/d;->mData:[I

    iget v1, p0, Lcom/android/gallery3d/b/d;->mSize:I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    return-object p1
.end method

.method public ak()[I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/b/d;->mData:[I

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/b/d;->mSize:I

    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/b/d;->mData:[I

    array-length v0, v0

    if-eq v0, v1, :cond_0

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/gallery3d/b/d;->mData:[I

    .line 53
    :cond_0
    return-void
.end method

.method public q(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 26
    iget-object v0, p0, Lcom/android/gallery3d/b/d;->mData:[I

    array-length v0, v0

    iget v1, p0, Lcom/android/gallery3d/b/d;->mSize:I

    if-ne v0, v1, :cond_0

    .line 27
    iget v0, p0, Lcom/android/gallery3d/b/d;->mSize:I

    iget v1, p0, Lcom/android/gallery3d/b/d;->mSize:I

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 28
    iget-object v1, p0, Lcom/android/gallery3d/b/d;->mData:[I

    iget v2, p0, Lcom/android/gallery3d/b/d;->mSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    iput-object v0, p0, Lcom/android/gallery3d/b/d;->mData:[I

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/b/d;->mData:[I

    iget v1, p0, Lcom/android/gallery3d/b/d;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/gallery3d/b/d;->mSize:I

    aput p1, v0, v1

    .line 32
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/android/gallery3d/b/d;->mSize:I

    return v0
.end method
