.class Lcom/android/gallery3d/ui/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic cs:Lcom/android/gallery3d/ui/q;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/q;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/gallery3d/ui/ad;->cs:Lcom/android/gallery3d/ui/q;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/ui/ad;->cs:Lcom/android/gallery3d/ui/q;

    invoke-static {v0}, Lcom/android/gallery3d/ui/q;->b(Lcom/android/gallery3d/ui/q;)Lcom/android/gallery3d/ui/ea;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/ui/ad;->cs:Lcom/android/gallery3d/ui/q;

    invoke-static {v0}, Lcom/android/gallery3d/ui/q;->b(Lcom/android/gallery3d/ui/q;)Lcom/android/gallery3d/ui/ea;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/ea;->onClose()V

    .line 113
    :cond_0
    return-void
.end method
