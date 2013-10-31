.class Lcom/android/gallery3d/gadget/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic Ea:Lcom/android/gallery3d/gadget/WidgetTypeChooser;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/gadget/WidgetTypeChooser;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/gallery3d/gadget/i;->Ea:Lcom/android/gallery3d/gadget/WidgetTypeChooser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "widget-type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/android/gallery3d/gadget/i;->Ea:Lcom/android/gallery3d/gadget/WidgetTypeChooser;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/gadget/WidgetTypeChooser;->setResult(ILandroid/content/Intent;)V

    .line 43
    iget-object v0, p0, Lcom/android/gallery3d/gadget/i;->Ea:Lcom/android/gallery3d/gadget/WidgetTypeChooser;

    invoke-virtual {v0}, Lcom/android/gallery3d/gadget/WidgetTypeChooser;->finish()V

    .line 44
    return-void
.end method
