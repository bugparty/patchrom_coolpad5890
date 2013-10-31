.class Lcom/android/gallery3d/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/a/ar;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/android/gallery3d/a/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/a/cg;Lcom/android/gallery3d/a/cg;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 259
    iget-object v0, p1, Lcom/android/gallery3d/a/cg;->jy:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/dd;->gy()Ljava/lang/String;

    move-result-object v0

    .line 260
    iget-object v1, p2, Lcom/android/gallery3d/a/cg;->jy:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v1}, Lcom/android/gallery3d/a/dd;->gy()Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 262
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 263
    if-ge v2, v3, :cond_0

    .line 264
    const/4 v0, -0x1

    .line 268
    :goto_0
    return v0

    .line 265
    :cond_0
    if-le v2, v3, :cond_1

    .line 266
    const/4 v0, 0x1

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 257
    check-cast p1, Lcom/android/gallery3d/a/cg;

    check-cast p2, Lcom/android/gallery3d/a/cg;

    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/a/o;->a(Lcom/android/gallery3d/a/cg;Lcom/android/gallery3d/a/cg;)I

    move-result v0

    return v0
.end method
