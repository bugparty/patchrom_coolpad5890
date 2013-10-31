.class public Lcom/android/gallery3d/b/ac;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field private static final EQ:I = 0x1000


# instance fields
.field private ER:Ljava/io/OutputStream;

.field private volatile ES:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/b/ac;->ES:Z

    .line 33
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/android/gallery3d/b/ac;->ER:Ljava/io/OutputStream;

    .line 34
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/b/ac;->ER:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 56
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/gallery3d/b/ac;->ES:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/b/ac;->ER:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 62
    return-void
.end method

.method public interrupt()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/b/ac;->ES:Z

    .line 66
    return-void
.end method

.method public write(I)V
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/gallery3d/b/ac;->ES:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/b/ac;->ER:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 40
    return-void
.end method

.method public write([BII)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    add-int v0, p2, p3

    .line 45
    :goto_0
    if-ge p2, v0, :cond_1

    .line 46
    iget-boolean v1, p0, Lcom/android/gallery3d/b/ac;->ES:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 47
    :cond_0
    const/16 v1, 0x1000

    sub-int v2, v0, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 48
    iget-object v2, p0, Lcom/android/gallery3d/b/ac;->ER:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 49
    add-int/2addr p2, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-void
.end method
