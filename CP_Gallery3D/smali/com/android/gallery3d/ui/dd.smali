.class Lcom/android/gallery3d/ui/dd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/af;


# instance fields
.field final synthetic zQ:Lcom/android/gallery3d/ui/eo;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/eo;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/gallery3d/ui/dd;->zQ:Lcom/android/gallery3d/ui/eo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/eo;Lcom/android/gallery3d/ui/db;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/dd;-><init>(Lcom/android/gallery3d/ui/eo;)V

    return-void
.end method


# virtual methods
.method public T(I)V
    .locals 3
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/gallery3d/ui/dd;->zQ:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/eo;->B(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/gallery3d/ui/dd;->zQ:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/eo;->bd()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/dd;->zQ:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/eo;->be()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 216
    iget-object v1, p0, Lcom/android/gallery3d/ui/dd;->zQ:Lcom/android/gallery3d/ui/eo;

    invoke-static {v1, v0, v0}, Lcom/android/gallery3d/ui/eo;->a(Lcom/android/gallery3d/ui/eo;II)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/dd;->zQ:Lcom/android/gallery3d/ui/eo;

    iget-object v1, p0, Lcom/android/gallery3d/ui/dd;->zQ:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/eo;->bd()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/dd;->zQ:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/eo;->be()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/eo;->a(Lcom/android/gallery3d/ui/eo;II)V

    .line 219
    iget-object v0, p0, Lcom/android/gallery3d/ui/dd;->zQ:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/eo;->invalidate()V

    .line 220
    return-void
.end method

.method public a(ILcom/android/gallery3d/ui/eb;Lcom/android/gallery3d/ui/eb;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/gallery3d/ui/dd;->zQ:Lcom/android/gallery3d/ui/eo;

    invoke-static {v0, p1, p2}, Lcom/android/gallery3d/ui/eo;->a(Lcom/android/gallery3d/ui/eo;ILcom/android/gallery3d/ui/eb;)V

    .line 224
    iget-object v0, p0, Lcom/android/gallery3d/ui/dd;->zQ:Lcom/android/gallery3d/ui/eo;

    invoke-static {v0, p1, p3}, Lcom/android/gallery3d/ui/eo;->b(Lcom/android/gallery3d/ui/eo;ILcom/android/gallery3d/ui/eb;)V

    .line 225
    iget-object v0, p0, Lcom/android/gallery3d/ui/dd;->zQ:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/eo;->invalidate()V

    .line 226
    return-void
.end method

.method public bN()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/gallery3d/ui/dd;->zQ:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/eo;->invalidate()V

    .line 230
    return-void
.end method
