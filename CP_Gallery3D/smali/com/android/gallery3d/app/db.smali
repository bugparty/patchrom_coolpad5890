.class Lcom/android/gallery3d/app/db;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/bt;


# instance fields
.field private mIndex:I

.field final synthetic nS:Lcom/android/gallery3d/app/ca;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/ca;)V
    .locals 0
    .parameter

    .prologue
    .line 833
    iput-object p1, p0, Lcom/android/gallery3d/app/db;->nS:Lcom/android/gallery3d/app/ca;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/ca;Lcom/android/gallery3d/app/en;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 833
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/db;-><init>(Lcom/android/gallery3d/app/ca;)V

    return-void
.end method


# virtual methods
.method public H(I)I
    .locals 0
    .parameter

    .prologue
    .line 848
    iput p1, p0, Lcom/android/gallery3d/app/db;->mIndex:I

    .line 849
    return p1
.end method

.method public aq()Lcom/android/gallery3d/a/cw;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/gallery3d/app/db;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v0}, Lcom/android/gallery3d/app/ca;->g(Lcom/android/gallery3d/app/ca;)Lcom/android/gallery3d/app/dt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/dt;->p()Lcom/android/gallery3d/a/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->aq()Lcom/android/gallery3d/a/cw;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 854
    iget v0, p0, Lcom/android/gallery3d/app/db;->mIndex:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/gallery3d/app/db;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v0}, Lcom/android/gallery3d/app/ca;->n(Lcom/android/gallery3d/app/ca;)Lcom/android/gallery3d/a/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/db;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v0}, Lcom/android/gallery3d/app/ca;->n(Lcom/android/gallery3d/app/ca;)Lcom/android/gallery3d/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->aN()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
