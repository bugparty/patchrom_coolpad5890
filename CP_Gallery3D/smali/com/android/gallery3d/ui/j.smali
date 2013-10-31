.class Lcom/android/gallery3d/ui/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic bV:Lcom/android/gallery3d/ui/el;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/el;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/gallery3d/ui/j;->bV:Lcom/android/gallery3d/ui/el;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->bV:Lcom/android/gallery3d/ui/el;

    invoke-static {v0}, Lcom/android/gallery3d/ui/el;->a(Lcom/android/gallery3d/ui/el;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 54
    return-void
.end method
