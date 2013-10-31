.class Lcom/android/gallery3d/ui/bu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public length:I

.field public tb:Z

.field public tc:Landroid/graphics/Bitmap$Config;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/ax;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/gallery3d/ui/bu;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/bu;->dV()Lcom/android/gallery3d/ui/bu;

    move-result-object v0

    return-object v0
.end method

.method public dV()Lcom/android/gallery3d/ui/bu;
    .locals 2

    .prologue
    .line 98
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/bu;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 89
    instance-of v1, p1, Lcom/android/gallery3d/ui/bu;

    if-nez v1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    check-cast p1, Lcom/android/gallery3d/ui/bu;

    .line 91
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/bu;->tb:Z

    iget-boolean v2, p1, Lcom/android/gallery3d/ui/bu;->tb:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/bu;->tc:Landroid/graphics/Bitmap$Config;

    iget-object v2, p1, Lcom/android/gallery3d/ui/bu;->tc:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/bu;->length:I

    iget v2, p1, Lcom/android/gallery3d/ui/bu;->length:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/ui/bu;->tc:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/ui/bu;->length:I

    xor-int/2addr v0, v1

    .line 84
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/bu;->tb:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    neg-int v0, v0

    goto :goto_0
.end method
