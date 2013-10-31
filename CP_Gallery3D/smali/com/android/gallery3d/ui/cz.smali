.class Lcom/android/gallery3d/ui/cz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;


# instance fields
.field final synthetic xs:Lcom/android/gallery3d/ui/bd;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/bd;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/gallery3d/ui/cz;->xs:Lcom/android/gallery3d/ui/bd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShareTargetSelected(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/gallery3d/ui/cz;->xs:Lcom/android/gallery3d/ui/bd;

    invoke-static {v0}, Lcom/android/gallery3d/ui/bd;->a(Lcom/android/gallery3d/ui/bd;)Lcom/android/gallery3d/ui/ev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ev;->gr()V

    .line 161
    const/4 v0, 0x0

    return v0
.end method
