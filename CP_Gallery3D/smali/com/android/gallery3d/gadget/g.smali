.class Lcom/android/gallery3d/gadget/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Ea:Lcom/android/gallery3d/gadget/WidgetTypeChooser;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/gadget/WidgetTypeChooser;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/gallery3d/gadget/g;->Ea:Lcom/android/gallery3d/gadget/WidgetTypeChooser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/gadget/g;->Ea:Lcom/android/gallery3d/gadget/WidgetTypeChooser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/gadget/WidgetTypeChooser;->setResult(I)V

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/gadget/g;->Ea:Lcom/android/gallery3d/gadget/WidgetTypeChooser;

    invoke-virtual {v0}, Lcom/android/gallery3d/gadget/WidgetTypeChooser;->finish()V

    .line 86
    return-void
.end method
