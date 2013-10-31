.class public Lcom/android/gallery3d/app/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_STATE:Ljava/lang/String; = "bundle"

.field private static final TAG:Ljava/lang/String; = "StateManager"

.field private static final dI:Ljava/lang/String; = "activity-state"

.field private static final dJ:Ljava/lang/String; = "data"

.field private static final dK:Ljava/lang/String; = "class"

.field private static final dL:Ljava/lang/String; = "launch-gallery-on-top"


# instance fields
.field private dH:Z

.field private dM:Lcom/android/gallery3d/app/bm;

.field private dN:Ljava/util/Stack;

.field private dO:Lcom/android/gallery3d/app/ee;

.field private dP:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/bm;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v1, p0, Lcom/android/gallery3d/app/k;->dH:Z

    .line 45
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    .line 47
    iput-boolean v1, p0, Lcom/android/gallery3d/app/k;->dP:Z

    .line 50
    iput-object p1, p0, Lcom/android/gallery3d/app/k;->dM:Lcom/android/gallery3d/app/bm;

    .line 51
    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/gallery3d/app/k;->aj()Lcom/android/gallery3d/app/w;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/app/w;->b(IILandroid/content/Intent;)V

    .line 132
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/at;

    .line 114
    iget-object v0, v0, Lcom/android/gallery3d/app/at;->nK:Lcom/android/gallery3d/app/w;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/w;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 261
    const-string v1, "StateManager"

    const-string v2, "restoreFromState"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/bw;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v1, "launch-gallery-on-top"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/k;->dP:Z

    .line 263
    const-string v1, "activity-state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 264
    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 265
    check-cast v0, Landroid/os/Bundle;

    .line 266
    const-string v1, "class"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 269
    const-string v5, "data"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 270
    const-string v6, "bundle"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 274
    :try_start_0
    const-string v0, "StateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreFromState "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/gallery3d/app/bw;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/w;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    iget-object v1, p0, Lcom/android/gallery3d/app/k;->dM:Lcom/android/gallery3d/app/bm;

    invoke-virtual {v0, v1, v5}, Lcom/android/gallery3d/app/w;->a(Lcom/android/gallery3d/app/bm;Landroid/os/Bundle;)V

    .line 280
    invoke-virtual {v0, v5, v6}, Lcom/android/gallery3d/app/w;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 281
    iget-object v1, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    new-instance v6, Lcom/android/gallery3d/app/at;

    invoke-direct {v6, v5, v0}, Lcom/android/gallery3d/app/at;-><init>(Landroid/os/Bundle;Lcom/android/gallery3d/app/w;)V

    invoke-virtual {v1, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 283
    :cond_0
    return-void
.end method

.method a(Lcom/android/gallery3d/app/w;)V
    .locals 4
    .parameter

    .prologue
    .line 181
    const-string v0, "StateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/bw;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/at;

    iget-object v0, v0, Lcom/android/gallery3d/app/at;->nK:Lcom/android/gallery3d/app/w;

    if-eq p1, v0, :cond_3

    .line 185
    invoke-virtual {p1}, Lcom/android/gallery3d/app/w;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    const-string v0, "StateManager"

    const-string v1, "The state is already destroyed"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/bw;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The stateview to be finished is not at the top of the stack: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/at;

    iget-object v0, v0, Lcom/android/gallery3d/app/at;->nK:Lcom/android/gallery3d/app/w;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    const-string v1, "StateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/app/bw;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 205
    const-string v0, "StateManager"

    const-string v1, "no more state, finish activity"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/bw;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/gallery3d/app/k;->dM:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 207
    iget-object v1, p0, Lcom/android/gallery3d/app/k;->dO:Lcom/android/gallery3d/app/ee;

    if-eqz v1, :cond_2

    .line 208
    iget-object v1, p0, Lcom/android/gallery3d/app/k;->dO:Lcom/android/gallery3d/app/ee;

    iget v1, v1, Lcom/android/gallery3d/app/ee;->Hg:I

    iget-object v2, p0, Lcom/android/gallery3d/app/k;->dO:Lcom/android/gallery3d/app/ee;

    iget-object v2, v2, Lcom/android/gallery3d/app/ee;->Hh:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 210
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 214
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    const-string v0, "StateManager"

    const-string v1, "finish() failed, start default page"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/bw;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/android/gallery3d/app/k;->dM:Lcom/android/gallery3d/app/bm;

    check-cast v0, Lcom/android/gallery3d/app/Gallery;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/Gallery;->ed()V

    goto/16 :goto_0

    .line 196
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 197
    iget-boolean v0, p0, Lcom/android/gallery3d/app/k;->dH:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/gallery3d/app/w;->onPause()V

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/k;->dM:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/eh;->setContentPane(Lcom/android/gallery3d/ui/am;)V

    .line 199
    invoke-virtual {p1}, Lcom/android/gallery3d/app/w;->onDestroy()V
    :try_end_1
    .catch Ljava/util/EmptyStackException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 220
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/at;

    iget-object v0, v0, Lcom/android/gallery3d/app/at;->nK:Lcom/android/gallery3d/app/w;

    .line 221
    iget-boolean v1, p0, Lcom/android/gallery3d/app/k;->dH:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/w;->resume()V

    goto/16 :goto_0
.end method

.method a(Lcom/android/gallery3d/app/w;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    const-string v0, "StateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/bw;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/at;

    iget-object v0, v0, Lcom/android/gallery3d/app/at;->nK:Lcom/android/gallery3d/app/w;

    if-eq p1, v0, :cond_0

    .line 229
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The stateview to be finished is not at the top of the stack: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/at;

    iget-object v0, v0, Lcom/android/gallery3d/app/at;->nK:Lcom/android/gallery3d/app/w;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 235
    iget-boolean v0, p0, Lcom/android/gallery3d/app/k;->dH:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/gallery3d/app/w;->onPause()V

    .line 236
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/app/w;->onDestroy()V

    .line 241
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/w;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    iget-object v1, p0, Lcom/android/gallery3d/app/k;->dM:Lcom/android/gallery3d/app/bm;

    invoke-virtual {v0, v1, p3}, Lcom/android/gallery3d/app/w;->a(Lcom/android/gallery3d/app/bm;Landroid/os/Bundle;)V

    .line 246
    iget-object v1, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    new-instance v2, Lcom/android/gallery3d/app/at;

    invoke-direct {v2, p3, v0}, Lcom/android/gallery3d/app/at;-><init>(Landroid/os/Bundle;Lcom/android/gallery3d/app/w;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/android/gallery3d/app/w;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 248
    iget-boolean v1, p0, Lcom/android/gallery3d/app/k;->dH:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/gallery3d/app/w;->resume()V

    .line 249
    :cond_2
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public a(Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    const-string v0, "StateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startStateForResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/bw;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/w;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    iget-object v1, p0, Lcom/android/gallery3d/app/k;->dM:Lcom/android/gallery3d/app/bm;

    invoke-virtual {v0, v1, p3}, Lcom/android/gallery3d/app/w;->a(Lcom/android/gallery3d/app/bm;Landroid/os/Bundle;)V

    .line 87
    new-instance v1, Lcom/android/gallery3d/app/ee;

    invoke-direct {v1}, Lcom/android/gallery3d/app/ee;-><init>()V

    iput-object v1, v0, Lcom/android/gallery3d/app/w;->dO:Lcom/android/gallery3d/app/ee;

    .line 88
    iget-object v1, v0, Lcom/android/gallery3d/app/w;->dO:Lcom/android/gallery3d/app/ee;

    iput p2, v1, Lcom/android/gallery3d/app/ee;->Hf:I

    .line 90
    iget-object v1, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/android/gallery3d/app/k;->aj()Lcom/android/gallery3d/app/w;

    move-result-object v1

    .line 92
    iget-object v2, v0, Lcom/android/gallery3d/app/w;->dO:Lcom/android/gallery3d/app/ee;

    iput-object v2, v1, Lcom/android/gallery3d/app/w;->ew:Lcom/android/gallery3d/app/ee;

    .line 93
    iget-boolean v2, p0, Lcom/android/gallery3d/app/k;->dH:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/gallery3d/app/w;->onPause()V

    .line 98
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    new-instance v2, Lcom/android/gallery3d/app/at;

    invoke-direct {v2, p3, v0}, Lcom/android/gallery3d/app/at;-><init>(Landroid/os/Bundle;Lcom/android/gallery3d/app/w;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/android/gallery3d/app/w;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 100
    iget-boolean v1, p0, Lcom/android/gallery3d/app/k;->dH:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/app/w;->resume()V

    .line 101
    :cond_1
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 95
    :cond_2
    iget-object v1, v0, Lcom/android/gallery3d/app/w;->dO:Lcom/android/gallery3d/app/ee;

    iput-object v1, p0, Lcom/android/gallery3d/app/k;->dO:Lcom/android/gallery3d/app/ee;

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 55
    const-string v0, "StateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/bw;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/w;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    iget-object v1, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/gallery3d/app/k;->aj()Lcom/android/gallery3d/app/w;

    move-result-object v1

    .line 64
    iget-boolean v2, p0, Lcom/android/gallery3d/app/k;->dH:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/gallery3d/app/w;->onPause()V

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/k;->dM:Lcom/android/gallery3d/app/bm;

    invoke-virtual {v0, v1, p2}, Lcom/android/gallery3d/app/w;->a(Lcom/android/gallery3d/app/bm;Landroid/os/Bundle;)V

    .line 68
    iget-object v1, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    new-instance v2, Lcom/android/gallery3d/app/at;

    invoke-direct {v2, p2, v0}, Lcom/android/gallery3d/app/at;-><init>(Landroid/os/Bundle;Lcom/android/gallery3d/app/w;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/gallery3d/app/w;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 70
    iget-boolean v1, p0, Lcom/android/gallery3d/app/k;->dH:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/app/w;->resume()V

    .line 71
    :cond_1
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/app/k;->dM:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/android/gallery3d/app/k;->aj()Lcom/android/gallery3d/app/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/w;->b(Landroid/view/Menu;)Z

    move-result v0

    .line 108
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 140
    iget-object v1, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 141
    invoke-virtual {p0}, Lcom/android/gallery3d/app/k;->aj()Lcom/android/gallery3d/app/w;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/w;->c(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_2

    .line 143
    iget-object v1, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/android/gallery3d/app/k;->aj()Lcom/android/gallery3d/app/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/w;->onBackPressed()V

    goto :goto_0

    .line 149
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;)Z
    .locals 2
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/at;

    .line 306
    iget-object v0, v0, Lcom/android/gallery3d/app/at;->nK:Lcom/android/gallery3d/app/w;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    const/4 v0, 0x1

    .line 310
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aj()Lcom/android/gallery3d/app/w;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 315
    iget-object v0, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/at;

    iget-object v0, v0, Lcom/android/gallery3d/app/at;->nK:Lcom/android/gallery3d/app/w;

    return-object v0

    .line 314
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    .line 286
    const-string v0, "StateManager"

    const-string v1, "saveState"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/bw;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v0, "launch-gallery-on-top"

    iget-boolean v1, p0, Lcom/android/gallery3d/app/k;->dP:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 289
    iget-object v0, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    new-array v2, v0, [Landroid/os/Parcelable;

    .line 290
    const/4 v0, 0x0

    .line 291
    iget-object v1, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/at;

    .line 292
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 293
    const-string v5, "class"

    iget-object v6, v0, Lcom/android/gallery3d/app/at;->nK:Lcom/android/gallery3d/app/w;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 294
    const-string v5, "data"

    iget-object v6, v0, Lcom/android/gallery3d/app/at;->data:Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 295
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 296
    iget-object v6, v0, Lcom/android/gallery3d/app/at;->nK:Lcom/android/gallery3d/app/w;

    invoke-virtual {v6, v5}, Lcom/android/gallery3d/app/w;->c(Landroid/os/Bundle;)V

    .line 297
    const-string v6, "bundle"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 298
    const-string v5, "StateManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveState "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v0, Lcom/android/gallery3d/app/at;->nK:Lcom/android/gallery3d/app/w;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/gallery3d/app/bw;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    add-int/lit8 v0, v1, 0x1

    aput-object v4, v2, v1

    move v1, v0

    .line 300
    goto :goto_0

    .line 301
    :cond_0
    const-string v0, "activity-state"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 302
    return-void
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/gallery3d/app/k;->dP:Z

    .line 75
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 252
    const-string v0, "StateManager"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/bw;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/at;

    iget-object v0, v0, Lcom/android/gallery3d/app/at;->nK:Lcom/android/gallery3d/app/w;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/w;->onDestroy()V

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 257
    return-void
.end method

.method public getStateCount()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/android/gallery3d/app/k;->aj()Lcom/android/gallery3d/app/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/w;->onBackPressed()V

    .line 178
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/android/gallery3d/app/k;->aj()Lcom/android/gallery3d/app/w;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/app/w;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 331
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/gallery3d/app/k;->dH:Z

    if-nez v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/k;->dH:Z

    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/k;->aj()Lcom/android/gallery3d/app/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/w;->onPause()V

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/gallery3d/app/k;->dH:Z

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/k;->dH:Z

    .line 121
    iget-object v0, p0, Lcom/android/gallery3d/app/k;->dN:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/k;->aj()Lcom/android/gallery3d/app/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/w;->resume()V

    goto :goto_0
.end method
