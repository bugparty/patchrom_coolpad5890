.class Lcom/android/gallery3d/ui/dz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Ed:Lcom/android/gallery3d/b/l;

.field final synthetic Ee:Lcom/android/gallery3d/ui/cm;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/cm;Lcom/android/gallery3d/b/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/gallery3d/ui/dz;->Ee:Lcom/android/gallery3d/ui/cm;

    iput-object p2, p0, Lcom/android/gallery3d/ui/dz;->Ed:Lcom/android/gallery3d/b/l;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/ui/dz;->Ee:Lcom/android/gallery3d/ui/cm;

    iget-object v1, v0, Lcom/android/gallery3d/ui/cm;->uh:Lcom/android/gallery3d/ui/eu;

    iget-object v0, p0, Lcom/android/gallery3d/ui/dz;->Ed:Lcom/android/gallery3d/b/l;

    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/eu;->a(Lcom/android/gallery3d/ui/eu;Landroid/location/Address;)V

    .line 72
    return-void
.end method
