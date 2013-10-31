.class Lcom/android/gallery3d/ui/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/de;


# instance fields
.field final synthetic ny:Lcom/android/gallery3d/ui/bf;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/bf;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/gallery3d/ui/at;->ny:Lcom/android/gallery3d/ui/bf;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/bf;Lcom/android/gallery3d/ui/dp;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/at;-><init>(Lcom/android/gallery3d/ui/bf;)V

    return-void
.end method


# virtual methods
.method public T(I)V
    .locals 3
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/gallery3d/ui/at;->ny:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/bf;->B(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/gallery3d/ui/at;->ny:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bf;->bd()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/at;->ny:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/bf;->be()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 173
    iget-object v1, p0, Lcom/android/gallery3d/ui/at;->ny:Lcom/android/gallery3d/ui/bf;

    invoke-static {v1, v0, v0}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/bf;II)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/at;->ny:Lcom/android/gallery3d/ui/bf;

    iget-object v1, p0, Lcom/android/gallery3d/ui/at;->ny:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/bf;->bd()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/at;->ny:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/bf;->be()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/bf;II)V

    .line 176
    iget-object v0, p0, Lcom/android/gallery3d/ui/at;->ny:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bf;->invalidate()V

    .line 177
    return-void
.end method

.method public a(ILcom/android/gallery3d/ui/av;Lcom/android/gallery3d/ui/av;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/gallery3d/ui/at;->ny:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/av;)V

    .line 182
    iget-object v0, p0, Lcom/android/gallery3d/ui/at;->ny:Lcom/android/gallery3d/ui/bf;

    invoke-static {v0, p1, p3}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/bf;ILcom/android/gallery3d/ui/av;)V

    .line 183
    return-void
.end method

.method public bN()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/gallery3d/ui/at;->ny:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bf;->invalidate()V

    .line 163
    return-void
.end method
