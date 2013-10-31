.class Lcom/android/gallery3d/a/am;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private jr:Lcom/android/gallery3d/a/r;

.field private oN:Ljava/lang/ref/SoftReference;

.field private oO:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/a/r;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/android/gallery3d/a/am;->jr:Lcom/android/gallery3d/a/r;

    .line 189
    return-void
.end method


# virtual methods
.method public ah(I)Lcom/android/gallery3d/a/ax;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 196
    const/4 v3, 0x0

    .line 198
    iget-object v0, p0, Lcom/android/gallery3d/a/am;->oN:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/a/am;->oO:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/a/am;->oO:I

    add-int/lit8 v0, v0, 0x40

    if-lt p1, v0, :cond_4

    :cond_0
    move-object v0, v1

    .line 208
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 209
    iget-object v0, p0, Lcom/android/gallery3d/a/am;->jr:Lcom/android/gallery3d/a/r;

    const/16 v2, 0x40

    invoke-virtual {v0, p1, v2}, Lcom/android/gallery3d/a/r;->j(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 210
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/gallery3d/a/am;->oN:Ljava/lang/ref/SoftReference;

    .line 211
    iput p1, p0, Lcom/android/gallery3d/a/am;->oO:I

    .line 214
    :cond_2
    iget v2, p0, Lcom/android/gallery3d/a/am;->oO:I

    if-lt p1, v2, :cond_3

    iget v2, p0, Lcom/android/gallery3d/a/am;->oO:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-lt p1, v2, :cond_5

    :cond_3
    move-object v0, v1

    .line 218
    :goto_1
    return-object v0

    .line 202
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/a/am;->oN:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 203
    if-eqz v0, :cond_1

    move v2, v3

    goto :goto_0

    .line 218
    :cond_5
    iget v1, p0, Lcom/android/gallery3d/a/am;->oO:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ax;

    goto :goto_1
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/a/am;->oN:Ljava/lang/ref/SoftReference;

    .line 193
    return-void
.end method
