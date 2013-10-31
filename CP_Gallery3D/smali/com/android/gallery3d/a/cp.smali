.class Lcom/android/gallery3d/a/cp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/bu;


# instance fields
.field final synthetic GA:Lcom/android/gallery3d/a/bn;

.field final synthetic GB:[Lcom/android/gallery3d/a/dd;

.field final synthetic cf:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/a/bn;I[Lcom/android/gallery3d/a/dd;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/gallery3d/a/cp;->GA:Lcom/android/gallery3d/a/bn;

    iput p2, p0, Lcom/android/gallery3d/a/cp;->cf:I

    iput-object p3, p0, Lcom/android/gallery3d/a/cp;->GB:[Lcom/android/gallery3d/a/dd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/android/gallery3d/a/ax;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-virtual {p2}, Lcom/android/gallery3d/a/ax;->ao()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/a/cp;->GA:Lcom/android/gallery3d/a/bn;

    invoke-static {v1}, Lcom/android/gallery3d/a/bn;->a(Lcom/android/gallery3d/a/bn;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 107
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/a/cp;->cf:I

    if-lt p1, v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p2}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/android/gallery3d/a/cp;->GB:[Lcom/android/gallery3d/a/dd;

    aput-object v0, v1, p1

    goto :goto_0
.end method
