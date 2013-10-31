.class Lcom/android/gallery3d/a/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/bu;


# instance fields
.field final synthetic cf:I

.field final synthetic yH:[D

.field final synthetic yI:[Lcom/android/gallery3d/a/ad;

.field final synthetic yJ:Lcom/android/gallery3d/a/bb;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/a/bb;I[D[Lcom/android/gallery3d/a/ad;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/gallery3d/a/bo;->yJ:Lcom/android/gallery3d/a/bb;

    iput p2, p0, Lcom/android/gallery3d/a/bo;->cf:I

    iput-object p3, p0, Lcom/android/gallery3d/a/bo;->yH:[D

    iput-object p4, p0, Lcom/android/gallery3d/a/bo;->yI:[Lcom/android/gallery3d/a/ad;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/android/gallery3d/a/ax;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 119
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/a/bo;->cf:I

    if-lt p1, v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    new-instance v0, Lcom/android/gallery3d/a/ad;

    invoke-direct {v0}, Lcom/android/gallery3d/a/ad;-><init>()V

    .line 121
    invoke-virtual {p2}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/a/ad;->jy:Lcom/android/gallery3d/a/dd;

    .line 122
    invoke-virtual {p2}, Lcom/android/gallery3d/a/ax;->dx()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/gallery3d/a/ad;->jz:J

    .line 123
    iget-object v1, p0, Lcom/android/gallery3d/a/bo;->yH:[D

    invoke-virtual {p2, v1}, Lcom/android/gallery3d/a/ax;->a([D)V

    .line 124
    iget-object v1, p0, Lcom/android/gallery3d/a/bo;->yH:[D

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    iput-wide v1, v0, Lcom/android/gallery3d/a/ad;->jA:D

    .line 125
    iget-object v1, p0, Lcom/android/gallery3d/a/bo;->yH:[D

    const/4 v2, 0x1

    aget-wide v1, v1, v2

    iput-wide v1, v0, Lcom/android/gallery3d/a/ad;->jB:D

    .line 126
    iget-object v1, p0, Lcom/android/gallery3d/a/bo;->yI:[Lcom/android/gallery3d/a/ad;

    aput-object v0, v1, p1

    goto :goto_0
.end method
