.class Lcom/android/gallery3d/photoeditor/actions/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/be;


# instance fields
.field private Hb:Ljava/lang/Runnable;

.field private done:Z

.field final synthetic op:Lcom/android/gallery3d/photoeditor/actions/EffectAction;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/am;->op:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/photoeditor/actions/EffectAction;Lcom/android/gallery3d/photoeditor/actions/p;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/am;-><init>(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/actions/am;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/am;->Hb:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/actions/am;)Z
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/am;->done:Z

    return v0
.end method


# virtual methods
.method public dc()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/actions/am;->done:Z

    .line 163
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/am;->Hb:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/am;->Hb:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 166
    :cond_0
    return-void
.end method
