.class Lcom/android/gallery3d/ui/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/ab;


# instance fields
.field private ug:[D

.field final synthetic uh:Lcom/android/gallery3d/ui/eu;


# direct methods
.method protected constructor <init>(Lcom/android/gallery3d/ui/eu;[D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/gallery3d/ui/bz;->uh:Lcom/android/gallery3d/ui/eu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/android/gallery3d/ui/bz;->ug:[D

    .line 44
    return-void
.end method


# virtual methods
.method public bridge synthetic c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/bz;->o(Lcom/android/gallery3d/b/j;)Landroid/location/Address;

    move-result-object v0

    return-object v0
.end method

.method public o(Lcom/android/gallery3d/b/j;)Landroid/location/Address;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 47
    new-instance v0, Lcom/android/gallery3d/b/v;

    iget-object v1, p0, Lcom/android/gallery3d/ui/bz;->uh:Lcom/android/gallery3d/ui/eu;

    invoke-static {v1}, Lcom/android/gallery3d/ui/eu;->a(Lcom/android/gallery3d/ui/eu;)Lcom/android/gallery3d/app/bm;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/b/v;-><init>(Landroid/content/Context;)V

    .line 48
    iget-object v1, p0, Lcom/android/gallery3d/ui/bz;->ug:[D

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/bz;->ug:[D

    aget-wide v3, v3, v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/b/v;->a(DDZ)Landroid/location/Address;

    move-result-object v0

    return-object v0
.end method
