.class Lcom/android/gallery3d/b/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/j;
.implements Lcom/android/gallery3d/b/l;
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "Worker"


# instance fields
.field private Cs:Lcom/android/gallery3d/b/ab;

.field private Dk:Lcom/android/gallery3d/b/a;

.field private Dl:Lcom/android/gallery3d/b/m;

.field final synthetic Dm:Lcom/android/gallery3d/b/n;

.field private cA:Lcom/android/gallery3d/b/u;

.field private volatile cB:Z

.field private cC:Z

.field private cD:Ljava/lang/Object;

.field private mMode:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/b/n;Lcom/android/gallery3d/b/ab;Lcom/android/gallery3d/b/u;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/gallery3d/b/x;->Dm:Lcom/android/gallery3d/b/n;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p2, p0, Lcom/android/gallery3d/b/x;->Cs:Lcom/android/gallery3d/b/ab;

    .line 113
    iput-object p3, p0, Lcom/android/gallery3d/b/x;->cA:Lcom/android/gallery3d/b/u;

    .line 114
    return-void
.end method

.method private a(Lcom/android/gallery3d/b/m;)Z
    .locals 1
    .parameter

    .prologue
    .line 216
    :goto_0
    monitor-enter p0

    .line 217
    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/b/x;->cB:Z

    if-eqz v0, :cond_0

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/b/x;->Dl:Lcom/android/gallery3d/b/m;

    .line 219
    const/4 v0, 0x0

    monitor-exit p0

    .line 242
    :goto_1
    return v0

    .line 221
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/b/x;->Dl:Lcom/android/gallery3d/b/m;

    .line 222
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-enter p1

    .line 225
    :try_start_1
    iget v0, p1, Lcom/android/gallery3d/b/m;->value:I

    if-lez v0, :cond_1

    .line 226
    iget v0, p1, Lcom/android/gallery3d/b/m;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/gallery3d/b/m;->value:I

    .line 227
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 238
    monitor-enter p0

    .line 239
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/gallery3d/b/x;->Dl:Lcom/android/gallery3d/b/m;

    .line 240
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 242
    const/4 v0, 0x1

    goto :goto_1

    .line 222
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 230
    :cond_1
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 235
    :goto_2
    :try_start_5
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 240
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 231
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private aU(I)Lcom/android/gallery3d/b/m;
    .locals 1
    .parameter

    .prologue
    .line 205
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/gallery3d/b/x;->Dm:Lcom/android/gallery3d/b/n;

    iget-object v0, v0, Lcom/android/gallery3d/b/n;->rm:Lcom/android/gallery3d/b/m;

    .line 210
    :goto_0
    return-object v0

    .line 207
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/gallery3d/b/x;->Dm:Lcom/android/gallery3d/b/n;

    iget-object v0, v0, Lcom/android/gallery3d/b/n;->rn:Lcom/android/gallery3d/b/m;

    goto :goto_0

    .line 210
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/android/gallery3d/b/m;)V
    .locals 1
    .parameter

    .prologue
    .line 246
    monitor-enter p1

    .line 247
    :try_start_0
    iget v0, p1, Lcom/android/gallery3d/b/m;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/gallery3d/b/m;->value:I

    .line 248
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 249
    monitor-exit p1

    .line 250
    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public N()V
    .locals 0

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/gallery3d/b/x;->get()Ljava/lang/Object;

    .line 175
    return-void
.end method

.method public declared-synchronized a(Lcom/android/gallery3d/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/gallery3d/b/x;->Dk:Lcom/android/gallery3d/b/a;

    .line 181
    iget-boolean v0, p0, Lcom/android/gallery3d/b/x;->cB:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/b/x;->Dk:Lcom/android/gallery3d/b/a;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/gallery3d/b/x;->Dk:Lcom/android/gallery3d/b/a;

    invoke-interface {v0}, Lcom/android/gallery3d/b/a;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_0
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public af(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 188
    iget v1, p0, Lcom/android/gallery3d/b/x;->mMode:I

    invoke-direct {p0, v1}, Lcom/android/gallery3d/b/x;->aU(I)Lcom/android/gallery3d/b/m;

    move-result-object v1

    .line 189
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/gallery3d/b/x;->b(Lcom/android/gallery3d/b/m;)V

    .line 190
    :cond_0
    iput v0, p0, Lcom/android/gallery3d/b/x;->mMode:I

    .line 193
    invoke-direct {p0, p1}, Lcom/android/gallery3d/b/x;->aU(I)Lcom/android/gallery3d/b/m;

    move-result-object v1

    .line 194
    if-eqz v1, :cond_2

    .line 195
    invoke-direct {p0, v1}, Lcom/android/gallery3d/b/x;->a(Lcom/android/gallery3d/b/m;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    :goto_0
    return v0

    .line 198
    :cond_1
    iput p1, p0, Lcom/android/gallery3d/b/x;->mMode:I

    .line 201
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized cancel()V
    .locals 2

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/b/x;->cB:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 142
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/gallery3d/b/x;->cB:Z

    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/b/x;->Dl:Lcom/android/gallery3d/b/m;

    if-eqz v0, :cond_2

    .line 144
    iget-object v1, p0, Lcom/android/gallery3d/b/x;->Dl:Lcom/android/gallery3d/b/m;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :try_start_2
    iget-object v0, p0, Lcom/android/gallery3d/b/x;->Dl:Lcom/android/gallery3d/b/m;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 146
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 148
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/gallery3d/b/x;->Dk:Lcom/android/gallery3d/b/a;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/gallery3d/b/x;->Dk:Lcom/android/gallery3d/b/a;

    invoke-interface {v0}, Lcom/android/gallery3d/b/a;->onCancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 146
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 162
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/b/x;->cC:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 164
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    :try_start_2
    const-string v1, "Worker"

    const-string v2, "ingore exception"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/b/af;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 170
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/android/gallery3d/b/x;->cD:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/gallery3d/b/x;->cB:Z

    return v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/b/x;->cC:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 118
    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/b/x;->af(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/b/x;->Cs:Lcom/android/gallery3d/b/ab;

    invoke-interface {v1, p0}, Lcom/android/gallery3d/b/ab;->c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    :cond_0
    :goto_0
    monitor-enter p0

    .line 131
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/b/x;->af(I)Z

    .line 132
    iput-object v0, p0, Lcom/android/gallery3d/b/x;->cD:Ljava/lang/Object;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/b/x;->cC:Z

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 135
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    iget-object v0, p0, Lcom/android/gallery3d/b/x;->cA:Lcom/android/gallery3d/b/u;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/b/x;->cA:Lcom/android/gallery3d/b/u;

    invoke-interface {v0, p0}, Lcom/android/gallery3d/b/u;->a(Lcom/android/gallery3d/b/l;)V

    .line 137
    :cond_1
    return-void

    .line 125
    :catch_0
    move-exception v1

    .line 126
    const-string v2, "Worker"

    const-string v3, "Exception in running a job"

    invoke-static {v2, v3, v1}, Lcom/android/gallery3d/b/af;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
