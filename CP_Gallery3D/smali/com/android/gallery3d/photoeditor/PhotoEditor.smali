.class public Lcom/android/gallery3d/photoeditor/PhotoEditor;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final eR:Ljava/lang/String; = "save_uri"


# instance fields
.field private aC:Lcom/android/gallery3d/photoeditor/ap;

.field private eS:Landroid/net/Uri;

.field private eT:Landroid/net/Uri;

.field private eU:Lcom/android/gallery3d/photoeditor/ActionBar;

.field private eV:Lcom/android/gallery3d/photoeditor/EffectsBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/PhotoEditor;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eT:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/ActionBar;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eU:Lcom/android/gallery3d/photoeditor/ActionBar;

    return-object v0
.end method

.method private au()V
    .locals 4

    .prologue
    .line 82
    invoke-static {}, Lcom/android/gallery3d/photoeditor/an;->showDialog()V

    .line 83
    new-instance v0, Lcom/android/gallery3d/photoeditor/ba;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/ba;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    .line 97
    new-instance v1, Lcom/android/gallery3d/photoeditor/ah;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/photoeditor/ah;-><init>(Landroid/content/Context;Lcom/android/gallery3d/photoeditor/h;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eS:Landroid/net/Uri;

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/ah;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 98
    return-void
.end method

.method private av()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/android/gallery3d/photoeditor/av;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/av;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    return-object v0
.end method

.method private aw()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/android/gallery3d/photoeditor/az;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/az;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    return-object v0
.end method

.method private ax()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/android/gallery3d/photoeditor/ay;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/ay;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    return-object v0
.end method

.method private ay()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 225
    new-instance v0, Lcom/android/gallery3d/photoeditor/au;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/au;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    return-object v0
.end method

.method static synthetic b(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eV:Lcom/android/gallery3d/photoeditor/EffectsBar;

    return-object v0
.end method

.method static synthetic c(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/ap;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->aC:Lcom/android/gallery3d/photoeditor/ap;

    return-object v0
.end method

.method static synthetic d(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eT:Landroid/net/Uri;

    return-object v0
.end method

.method private d(Z)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 101
    new-instance v0, Lcom/android/gallery3d/photoeditor/ax;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/photoeditor/ax;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;Z)V

    return-object v0
.end method

.method static synthetic e(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eS:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eU:Lcom/android/gallery3d/photoeditor/ActionBar;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/ActionBar;->eO()V

    .line 264
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->setContentView(I)V

    .line 45
    const v0, 0x7f0a0029

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/an;->a(Landroid/view/ViewGroup;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 48
    const-string v3, "android.intent.action.EDIT"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eS:Landroid/net/Uri;

    .line 52
    :cond_0
    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/ActionBar;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eU:Lcom/android/gallery3d/photoeditor/ActionBar;

    .line 53
    new-instance v3, Lcom/android/gallery3d/photoeditor/ap;

    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v4, Lcom/android/gallery3d/photoeditor/bb;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/photoeditor/bb;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V

    invoke-direct {v3, v0, v4, p1}, Lcom/android/gallery3d/photoeditor/ap;-><init>(Lcom/android/gallery3d/photoeditor/PhotoView;Lcom/android/gallery3d/photoeditor/bd;Landroid/os/Bundle;)V

    iput-object v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->aC:Lcom/android/gallery3d/photoeditor/ap;

    .line 61
    if-eqz p1, :cond_1

    .line 62
    const-string v0, "save_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eT:Landroid/net/Uri;

    .line 63
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eU:Lcom/android/gallery3d/photoeditor/ActionBar;

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eT:Landroid/net/Uri;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/gallery3d/photoeditor/ActionBar;->p(Z)V

    .line 67
    :cond_1
    const v0, 0x7f0a002b

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/EffectsBar;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eV:Lcom/android/gallery3d/photoeditor/EffectsBar;

    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eV:Lcom/android/gallery3d/photoeditor/EffectsBar;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->aC:Lcom/android/gallery3d/photoeditor/ap;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/photoeditor/EffectsBar;->a(Lcom/android/gallery3d/photoeditor/ap;)V

    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eV:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setEnabled(Z)V

    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eU:Lcom/android/gallery3d/photoeditor/ActionBar;

    const v3, 0x7f0a0019

    invoke-direct {p0, v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->d(Z)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/gallery3d/photoeditor/ActionBar;->a(ILjava/lang/Runnable;)V

    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eU:Lcom/android/gallery3d/photoeditor/ActionBar;

    const v1, 0x7f0a001a

    invoke-direct {p0, v2}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->d(Z)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/ActionBar;->a(ILjava/lang/Runnable;)V

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eU:Lcom/android/gallery3d/photoeditor/ActionBar;

    const v1, 0x7f0a001c

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->av()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/ActionBar;->a(ILjava/lang/Runnable;)V

    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eU:Lcom/android/gallery3d/photoeditor/ActionBar;

    const v1, 0x7f0a001d

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->aw()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/ActionBar;->a(ILjava/lang/Runnable;)V

    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eU:Lcom/android/gallery3d/photoeditor/ActionBar;

    const v1, 0x7f0a001f

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->ax()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/ActionBar;->a(ILjava/lang/Runnable;)V

    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eU:Lcom/android/gallery3d/photoeditor/ActionBar;

    const v1, 0x7f0a0017

    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->ay()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/ActionBar;->a(ILjava/lang/Runnable;)V

    .line 79
    return-void

    :cond_2
    move v0, v2

    .line 63
    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 268
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 269
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->aC:Lcom/android/gallery3d/photoeditor/ap;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/ap;->onPause()V

    .line 271
    invoke-static {}, Lcom/android/gallery3d/photoeditor/an;->dismissDialog()V

    .line 272
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 277
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->aC:Lcom/android/gallery3d/photoeditor/ap;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/ap;->onResume()V

    .line 280
    :try_start_0
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->au()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 256
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 257
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->aC:Lcom/android/gallery3d/photoeditor/ap;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/ap;->f(Landroid/os/Bundle;)V

    .line 258
    const-string v0, "save_uri"

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor;->eT:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 259
    return-void
.end method
