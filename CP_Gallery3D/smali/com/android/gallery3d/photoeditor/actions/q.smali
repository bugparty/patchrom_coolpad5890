.class Lcom/android/gallery3d/photoeditor/actions/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic op:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

.field final synthetic oq:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/EffectAction;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/q;->op:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/q;->oq:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/q;->op:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/q;->oq:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->a(Lcom/android/gallery3d/photoeditor/actions/EffectAction;Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method
