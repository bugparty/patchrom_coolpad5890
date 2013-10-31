.class public Lcom/android/gallery3d/app/de;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lcom/android/gallery3d/app/ai;


# static fields
.field private static final BP:Ljava/lang/String; = "video-position"

.field private static final BQ:Ljava/lang/String; = "resumeable-timeout"

.field private static final BR:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final BS:Ljava/lang/String; = "command"

.field private static final BT:Ljava/lang/String; = "pause"

.field private static final BU:J = 0x2bf20L

.field private static final TAG:Ljava/lang/String; = "MoviePlayer"


# instance fields
.field private final BV:Landroid/widget/VideoView;

.field private final BW:Lcom/android/gallery3d/app/do;

.field private final BX:Lcom/android/gallery3d/app/em;

.field private final BY:Lcom/android/gallery3d/app/df;

.field private BZ:J

.field private Ca:I

.field private Cb:Z

.field private Cc:Z

.field private Cd:Z

.field private final Ce:Ljava/lang/Runnable;

.field private final Cf:Ljava/lang/Runnable;

.field private final hM:Landroid/app/ActionBar;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const/4 v3, 0x0

    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/de;->mHandler:Landroid/os/Handler;

    .line 77
    iput-wide v4, p0, Lcom/android/gallery3d/app/de;->BZ:J

    .line 78
    iput v3, p0, Lcom/android/gallery3d/app/de;->Ca:I

    .line 79
    iput-boolean v3, p0, Lcom/android/gallery3d/app/de;->Cb:Z

    .line 87
    new-instance v0, Lcom/android/gallery3d/app/dg;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/dg;-><init>(Lcom/android/gallery3d/app/de;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/de;->Ce:Ljava/lang/Runnable;

    .line 98
    new-instance v0, Lcom/android/gallery3d/app/dh;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/dh;-><init>(Lcom/android/gallery3d/app/de;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/de;->Cf:Ljava/lang/Runnable;

    .line 108
    invoke-virtual {p2}, Lcom/android/gallery3d/app/MovieActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/de;->mContext:Landroid/content/Context;

    .line 109
    const v0, 0x7f0a0015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    .line 110
    new-instance v0, Lcom/android/gallery3d/app/do;

    invoke-direct {v0, p2}, Lcom/android/gallery3d/app/do;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/de;->BW:Lcom/android/gallery3d/app/do;

    .line 111
    invoke-virtual {p2}, Lcom/android/gallery3d/app/MovieActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/de;->hM:Landroid/app/ActionBar;

    .line 112
    iput-object p3, p0, Lcom/android/gallery3d/app/de;->mUri:Landroid/net/Uri;

    .line 114
    new-instance v0, Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v1, p0, Lcom/android/gallery3d/app/de;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/de;->BY:Lcom/android/gallery3d/app/df;

    .line 115
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BY:Lcom/android/gallery3d/app/df;

    invoke-interface {v0}, Lcom/android/gallery3d/app/df;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BY:Lcom/android/gallery3d/app/df;

    invoke-interface {v0, p0}, Lcom/android/gallery3d/app/df;->setListener(Lcom/android/gallery3d/app/ai;)V

    .line 117
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BY:Lcom/android/gallery3d/app/df;

    invoke-interface {v0, p5}, Lcom/android/gallery3d/app/df;->setCanReplay(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 121
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/gallery3d/app/de;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/gallery3d/app/dj;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/dj;-><init>(Lcom/android/gallery3d/app/de;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/gallery3d/app/dk;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/dk;-><init>(Lcom/android/gallery3d/app/de;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 141
    new-instance v0, Lcom/android/gallery3d/app/em;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/em;-><init>(Lcom/android/gallery3d/app/de;Lcom/android/gallery3d/app/dg;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/de;->BX:Lcom/android/gallery3d/app/em;

    .line 142
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BX:Lcom/android/gallery3d/app/em;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/em;->register()V

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p2, v0}, Lcom/android/gallery3d/app/MovieActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 148
    if-eqz p4, :cond_0

    .line 149
    const-string v0, "video-position"

    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/de;->Ca:I

    .line 150
    const-string v0, "resumeable-timeout"

    invoke-virtual {p4, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/app/de;->BZ:J

    .line 151
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 152
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/de;->Cb:Z

    .line 162
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BW:Lcom/android/gallery3d/app/do;

    iget-object v1, p0, Lcom/android/gallery3d/app/de;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/do;->i(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/gallery3d/app/de;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 159
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/de;->fG()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/gallery3d/app/de;)Landroid/widget/VideoView;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    return-object v0
.end method

.method private static aR(I)Z
    .locals 1
    .parameter

    .prologue
    .line 380
    const/16 v0, 0x4f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x58

    if-eq p0, v0, :cond_0

    const/16 v0, 0x57

    if-eq p0, v0, :cond_0

    const/16 v0, 0x55

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/gallery3d/app/de;)Lcom/android/gallery3d/app/df;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BY:Lcom/android/gallery3d/app/df;

    return-object v0
.end method

.method private b(Landroid/content/Context;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 176
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 177
    const v1, 0x7f0d0033

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 178
    const v1, 0x7f0d0034

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    div-int/lit16 v4, p2, 0x3e8

    invoke-static {p1, v4}, Lcom/android/gallery3d/b/y;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 181
    new-instance v1, Lcom/android/gallery3d/app/dl;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/dl;-><init>(Lcom/android/gallery3d/app/de;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    const v1, 0x7f0d0035

    new-instance v2, Lcom/android/gallery3d/app/dm;

    invoke-direct {v2, p0, p2}, Lcom/android/gallery3d/app/dm;-><init>(Lcom/android/gallery3d/app/de;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 195
    const v1, 0x7f0d0039

    new-instance v2, Lcom/android/gallery3d/app/di;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/di;-><init>(Lcom/android/gallery3d/app/de;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 202
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 203
    return-void
.end method

.method static synthetic c(Lcom/android/gallery3d/app/de;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->Ce:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/android/gallery3d/app/de;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/android/gallery3d/app/de;)I
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/gallery3d/app/de;->fF()I

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/android/gallery3d/app/de;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->Cf:Ljava/lang/Runnable;

    return-object v0
.end method

.method private fF()I
    .locals 3

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/android/gallery3d/app/de;->Cc:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/de;->Cd:Z

    if-nez v0, :cond_1

    .line 238
    :cond_0
    const/4 v0, 0x0

    .line 243
    :goto_0
    return v0

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    .line 241
    iget-object v1, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    .line 242
    iget-object v2, p0, Lcom/android/gallery3d/app/de;->BY:Lcom/android/gallery3d/app/df;

    invoke-interface {v2, v0, v1}, Lcom/android/gallery3d/app/df;->i(II)V

    goto :goto_0
.end method

.method private fG()V
    .locals 4

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 250
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "rtsp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BY:Lcom/android/gallery3d/app/df;

    invoke-interface {v0}, Lcom/android/gallery3d/app/df;->aH()V

    .line 252
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/de;->Ce:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 253
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/de;->Ce:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 258
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 259
    invoke-direct {p0}, Lcom/android/gallery3d/app/de;->fF()I

    .line 260
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BY:Lcom/android/gallery3d/app/df;

    invoke-interface {v0}, Lcom/android/gallery3d/app/df;->aE()V

    goto :goto_0
.end method

.method private fH()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 264
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BY:Lcom/android/gallery3d/app/df;

    invoke-interface {v0}, Lcom/android/gallery3d/app/df;->aE()V

    .line 265
    invoke-direct {p0}, Lcom/android/gallery3d/app/de;->fF()I

    .line 266
    return-void
.end method

.method private fI()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 270
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BY:Lcom/android/gallery3d/app/df;

    invoke-interface {v0}, Lcom/android/gallery3d/app/df;->aF()V

    .line 271
    return-void
.end method

.method static synthetic g(Lcom/android/gallery3d/app/de;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/gallery3d/app/de;->fG()V

    return-void
.end method

.method static synthetic h(Lcom/android/gallery3d/app/de;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/android/gallery3d/app/de;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/gallery3d/app/de;->fI()V

    return-void
.end method

.method private r(Z)V
    .locals 2
    .parameter

    .prologue
    .line 165
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 167
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setSystemUiVisibility(I)V

    .line 168
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public I(I)V
    .locals 1
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 310
    return-void
.end method

.method public J(I)V
    .locals 1
    .parameter

    .prologue
    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/de;->Cc:Z

    .line 315
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 316
    invoke-direct {p0}, Lcom/android/gallery3d/app/de;->fF()I

    .line 317
    return-void
.end method

.method public bA()V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/android/gallery3d/app/de;->fG()V

    .line 337
    return-void
.end method

.method public bw()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/android/gallery3d/app/de;->fI()V

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/de;->fH()V

    goto :goto_0
.end method

.method public bx()V
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/de;->Cc:Z

    .line 305
    return-void
.end method

.method public by()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 321
    iput-boolean v1, p0, Lcom/android/gallery3d/app/de;->Cd:Z

    .line 322
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->hM:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 323
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/de;->r(Z)V

    .line 324
    invoke-direct {p0}, Lcom/android/gallery3d/app/de;->fF()I

    .line 325
    return-void
.end method

.method public bz()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 329
    iput-boolean v1, p0, Lcom/android/gallery3d/app/de;->Cd:Z

    .line 330
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->hM:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 331
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/de;->r(Z)V

    .line 332
    return-void
.end method

.method public onCompletion()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BY:Lcom/android/gallery3d/app/df;

    invoke-interface {v0}, Lcom/android/gallery3d/app/df;->aG()V

    .line 286
    invoke-virtual {p0}, Lcom/android/gallery3d/app/de;->onCompletion()V

    .line 287
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 230
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BX:Lcom/android/gallery3d/app/em;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/em;->unregister()V

    .line 231
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BY:Lcom/android/gallery3d/app/df;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/df;->e(Ljava/lang/String;)V

    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 343
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 344
    invoke-static {p1}, Lcom/android/gallery3d/app/de;->aR(I)Z

    move-result v0

    .line 372
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 347
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 372
    const/4 v0, 0x0

    goto :goto_0

    .line 350
    :sswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 351
    invoke-direct {p0}, Lcom/android/gallery3d/app/de;->fI()V

    goto :goto_0

    .line 353
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/de;->fH()V

    goto :goto_0

    .line 357
    :sswitch_2
    iget-object v1, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    invoke-direct {p0}, Lcom/android/gallery3d/app/de;->fI()V

    goto :goto_0

    .line 362
    :sswitch_3
    iget-object v1, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    invoke-direct {p0}, Lcom/android/gallery3d/app/de;->fH()V

    goto :goto_0

    .line 347
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x7e -> :sswitch_3
        0x7f -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 376
    invoke-static {p1}, Lcom/android/gallery3d/app/de;->aR(I)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/de;->Cb:Z

    .line 207
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".m3u8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/de;->Ca:I

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BW:Lcom/android/gallery3d/app/do;

    iget-object v1, p0, Lcom/android/gallery3d/app/de;->mUri:Landroid/net/Uri;

    iget v2, p0, Lcom/android/gallery3d/app/de;->Ca:I

    iget-object v3, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/app/do;->c(Landroid/net/Uri;II)V

    .line 211
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x2bf20

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/app/de;->BZ:J

    .line 213
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/gallery3d/app/de;->Cb:Z

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    iget v1, p0, Lcom/android/gallery3d/app/de;->Ca:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 218
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->BV:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/app/de;->BZ:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/android/gallery3d/app/de;->fI()V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/de;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/de;->Cf:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 226
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 171
    const-string v0, "video-position"

    iget v1, p0, Lcom/android/gallery3d/app/de;->Ca:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    const-string v0, "resumeable-timeout"

    iget-wide v1, p0, Lcom/android/gallery3d/app/de;->BZ:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 173
    return-void
.end method
