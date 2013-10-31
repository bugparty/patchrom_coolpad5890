.class public abstract Lcom/android/gallery3d/app/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ep:I = 0x1

.field public static final eq:I = 0x2

.field public static final er:I = 0x3

.field private static final es:I = 0x280080


# instance fields
.field protected dO:Lcom/android/gallery3d/app/ee;

.field protected et:Lcom/android/gallery3d/app/bm;

.field protected eu:Landroid/os/Bundle;

.field protected ev:I

.field protected ew:Lcom/android/gallery3d/app/ee;

.field private ex:Z

.field ey:Landroid/content/BroadcastReceiver;

.field private mDestroyed:Z

.field protected mFlags:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v0, p0, Lcom/android/gallery3d/app/w;->mDestroyed:Z

    .line 69
    iput-boolean v0, p0, Lcom/android/gallery3d/app/w;->ex:Z

    .line 110
    new-instance v0, Lcom/android/gallery3d/app/cj;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/cj;-><init>(Lcom/android/gallery3d/app/w;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/w;->ey:Landroid/content/BroadcastReceiver;

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/app/w;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/gallery3d/app/w;->ex:Z

    return p1
.end method

.method static synthetic b(Lcom/android/gallery3d/app/w;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/gallery3d/app/w;->ex:Z

    return v0
.end method


# virtual methods
.method protected a(ILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->dO:Lcom/android/gallery3d/app/ee;

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->dO:Lcom/android/gallery3d/app/ee;

    iput p1, v0, Lcom/android/gallery3d/app/ee;->Hg:I

    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->dO:Lcom/android/gallery3d/app/ee;

    iput-object p2, v0, Lcom/android/gallery3d/app/ee;->Hh:Landroid/content/Intent;

    goto :goto_0
.end method

.method protected a(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    return-void
.end method

.method a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/gallery3d/app/w;->ex:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/w;->mFlags:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    .line 130
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x280080

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x280081

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method a(Lcom/android/gallery3d/app/bm;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    .line 80
    iput-object p2, p0, Lcom/android/gallery3d/app/w;->eu:Landroid/os/Bundle;

    .line 81
    return-void
.end method

.method protected b(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    return-void
.end method

.method protected b(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method protected c(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    return-void
.end method

.method protected c(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->eu:Landroid/os/Bundle;

    return-object v0
.end method

.method isDestroyed()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/android/gallery3d/app/w;->mDestroyed:Z

    return v0
.end method

.method protected onBackPressed()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/k;->a(Lcom/android/gallery3d/app/w;)V

    .line 89
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/w;->mDestroyed:Z

    .line 215
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 139
    iget v0, p0, Lcom/android/gallery3d/app/w;->mFlags:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->ey:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method resume()V
    .locals 6

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    .line 148
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    .line 149
    if-eqz v4, :cond_0

    .line 150
    iget v1, p0, Lcom/android/gallery3d/app/w;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 151
    invoke-virtual {v4}, Landroid/app/ActionBar;->hide()V

    .line 161
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/k;->getStateCount()I

    move-result v1

    .line 162
    if-ne v1, v5, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 165
    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 168
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 171
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 174
    iget v4, p0, Lcom/android/gallery3d/app/w;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    .line 175
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 181
    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 183
    iget-object v1, p0, Lcom/android/gallery3d/app/w;->ew:Lcom/android/gallery3d/app/ee;

    .line 184
    if-eqz v1, :cond_1

    .line 185
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/app/w;->ew:Lcom/android/gallery3d/app/ee;

    .line 186
    iget v2, v1, Lcom/android/gallery3d/app/ee;->Hf:I

    iget v3, v1, Lcom/android/gallery3d/app/ee;->Hg:I

    iget-object v1, v1, Lcom/android/gallery3d/app/ee;->Hh:Landroid/content/Intent;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/gallery3d/app/w;->b(IILandroid/content/Intent;)V

    .line 189
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/app/w;->mFlags:I

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_2

    .line 191
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 192
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/android/gallery3d/app/w;->ey:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/w;->onResume()V

    .line 196
    return-void

    .line 153
    :cond_3
    invoke-virtual {v4}, Landroid/app/ActionBar;->show()V

    goto :goto_0

    :cond_4
    move v1, v3

    .line 162
    goto :goto_1

    .line 177
    :cond_5
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    goto :goto_2
.end method

.method protected setContentPane(Lcom/android/gallery3d/ui/am;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/eh;->setContentPane(Lcom/android/gallery3d/ui/am;)V

    .line 76
    return-void
.end method
