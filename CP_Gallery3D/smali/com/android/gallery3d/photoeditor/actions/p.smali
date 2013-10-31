.class Lcom/android/gallery3d/photoeditor/actions/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic op:Lcom/android/gallery3d/photoeditor/actions/EffectAction;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/p;->op:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/p;->op:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->a(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)Lcom/android/gallery3d/photoeditor/actions/ae;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/photoeditor/actions/ae;->onClick()V

    .line 67
    return-void
.end method
