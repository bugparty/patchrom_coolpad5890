.class public Lcom/android/gallery3d/app/MovieActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MovieActivity"


# instance fields
.field private mUri:Landroid/net/Uri;

.field private se:Lcom/android/gallery3d/app/de;

.field private sf:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/app/MovieActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->sf:Z

    return v0
.end method

.method private e(Landroid/content/Intent;)V
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x4

    const/4 v6, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    .line 90
    invoke-virtual {v8, v0, v0}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 92
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 93
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    .line 94
    if-nez v7, :cond_3

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 99
    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    move-object v0, v7

    .line 105
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_0
    :goto_1
    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {v8, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    const-string v1, "MovieActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VIDEOFILENAME - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_2
    return-void

    .line 102
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 103
    :goto_3
    :try_start_2
    const-string v2, "MovieActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot get title from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 112
    :cond_2
    const-string v0, "MovieActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VIDEOFILENAME - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 105
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 102
    :catch_1
    move-exception v0

    goto :goto_3

    :cond_3
    move-object v0, v7

    goto :goto_1

    :cond_4
    move-object v0, v7

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->requestWindowFeature(I)Z

    .line 56
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->requestWindowFeature(I)Z

    .line 58
    const v0, 0x7f04000e

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->setContentView(I)V

    .line 59
    const v0, 0x7f0a0014

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 60
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 61
    invoke-direct {p0, v7}, Lcom/android/gallery3d/app/MovieActivity;->e(Landroid/content/Intent;)V

    .line 62
    const-string v0, "android.intent.extra.finishOnCompletion"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->sf:Z

    .line 64
    new-instance v0, Lcom/android/gallery3d/app/an;

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieActivity;->sf:Z

    if-nez v1, :cond_1

    :goto_0
    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/app/an;-><init>(Lcom/android/gallery3d/app/MovieActivity;Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->se:Lcom/android/gallery3d/app/de;

    .line 73
    const-string v0, "android.intent.extra.screenOrientation"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "android.intent.extra.screenOrientation"

    const/4 v1, -0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 77
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getRequestedOrientation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->setRequestedOrientation(I)V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 83
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 84
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 86
    return-void

    .line 64
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 120
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 121
    invoke-static {p1}, Lcom/android/gallery3d/app/ag;->c(Landroid/view/Menu;)Landroid/widget/ShareActionProvider;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_0

    .line 124
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    const-string v2, "video/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v2, "android.intent.extra.STREAM"

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 130
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->se:Lcom/android/gallery3d/app/de;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/de;->onDestroy()V

    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 179
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->se:Lcom/android/gallery3d/app/de;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/app/de;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->se:Lcom/android/gallery3d/app/de;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/app/de;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    .line 137
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->se:Lcom/android/gallery3d/app/de;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/de;->onPause()V

    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 161
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->se:Lcom/android/gallery3d/app/de;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/de;->onResume()V

    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 167
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 172
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->se:Lcom/android/gallery3d/app/de;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/de;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 173
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 144
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 148
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 152
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 155
    return-void
.end method
