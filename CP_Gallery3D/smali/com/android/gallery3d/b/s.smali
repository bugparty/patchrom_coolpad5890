.class public Lcom/android/gallery3d/b/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private xI:Lcom/android/gallery3d/b/s;

.field private xJ:Lcom/android/gallery3d/b/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p0, p0, Lcom/android/gallery3d/b/s;->xJ:Lcom/android/gallery3d/b/s;

    iput-object p0, p0, Lcom/android/gallery3d/b/s;->xI:Lcom/android/gallery3d/b/s;

    .line 26
    return-void
.end method

.method static synthetic b(Lcom/android/gallery3d/b/s;)Lcom/android/gallery3d/b/s;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/gallery3d/b/s;->xI:Lcom/android/gallery3d/b/s;

    return-object v0
.end method

.method static synthetic c(Lcom/android/gallery3d/b/s;)Lcom/android/gallery3d/b/s;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/gallery3d/b/s;->xJ:Lcom/android/gallery3d/b/s;

    return-object v0
.end method

.method public static eT()Lcom/android/gallery3d/b/aa;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/android/gallery3d/b/aa;

    invoke-direct {v0}, Lcom/android/gallery3d/b/aa;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/b/s;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/gallery3d/b/s;->xJ:Lcom/android/gallery3d/b/s;

    iput-object v0, p1, Lcom/android/gallery3d/b/s;->xJ:Lcom/android/gallery3d/b/s;

    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/b/s;->xJ:Lcom/android/gallery3d/b/s;

    iput-object p1, v0, Lcom/android/gallery3d/b/s;->xI:Lcom/android/gallery3d/b/s;

    .line 31
    iput-object p0, p1, Lcom/android/gallery3d/b/s;->xI:Lcom/android/gallery3d/b/s;

    .line 32
    iput-object p1, p0, Lcom/android/gallery3d/b/s;->xJ:Lcom/android/gallery3d/b/s;

    .line 33
    return-void
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/b/s;->xJ:Lcom/android/gallery3d/b/s;

    if-ne v0, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/b/s;->xI:Lcom/android/gallery3d/b/s;

    iget-object v1, p0, Lcom/android/gallery3d/b/s;->xJ:Lcom/android/gallery3d/b/s;

    iput-object v1, v0, Lcom/android/gallery3d/b/s;->xJ:Lcom/android/gallery3d/b/s;

    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/b/s;->xJ:Lcom/android/gallery3d/b/s;

    iget-object v1, p0, Lcom/android/gallery3d/b/s;->xI:Lcom/android/gallery3d/b/s;

    iput-object v1, v0, Lcom/android/gallery3d/b/s;->xI:Lcom/android/gallery3d/b/s;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/b/s;->xJ:Lcom/android/gallery3d/b/s;

    iput-object v0, p0, Lcom/android/gallery3d/b/s;->xI:Lcom/android/gallery3d/b/s;

    .line 40
    return-void
.end method
