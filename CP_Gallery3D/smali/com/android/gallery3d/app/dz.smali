.class Lcom/android/gallery3d/app/dz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/u;
.implements Ljava/lang/Runnable;


# instance fields
.field private final m:J

.field private n:Lcom/android/gallery3d/b/l;

.field final synthetic o:Lcom/android/gallery3d/app/c;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/c;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 791
    iput-object p1, p0, Lcom/android/gallery3d/app/dz;->o:Lcom/android/gallery3d/app/c;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 792
    iput-wide p2, p0, Lcom/android/gallery3d/app/dz;->m:J

    .line 793
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/b/l;)V
    .locals 3
    .parameter

    .prologue
    .line 797
    iput-object p1, p0, Lcom/android/gallery3d/app/dz;->n:Lcom/android/gallery3d/b/l;

    .line 798
    iget-object v0, p0, Lcom/android/gallery3d/app/dz;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->b(Lcom/android/gallery3d/app/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/dz;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v1}, Lcom/android/gallery3d/app/c;->b(Lcom/android/gallery3d/app/c;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 800
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/gallery3d/app/dz;->o:Lcom/android/gallery3d/app/c;

    iget-wide v1, p0, Lcom/android/gallery3d/app/dz;->m:J

    iget-object v3, p0, Lcom/android/gallery3d/app/dz;->n:Lcom/android/gallery3d/b/l;

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/app/c;->b(Lcom/android/gallery3d/app/c;JLcom/android/gallery3d/b/l;)V

    .line 805
    return-void
.end method
