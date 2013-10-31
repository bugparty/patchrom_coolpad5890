.class Lcom/android/gallery3d/app/dh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Ch:Lcom/android/gallery3d/app/de;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/de;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/gallery3d/app/dh;->Ch:Lcom/android/gallery3d/app/de;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/app/dh;->Ch:Lcom/android/gallery3d/app/de;

    invoke-static {v0}, Lcom/android/gallery3d/app/de;->e(Lcom/android/gallery3d/app/de;)I

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/android/gallery3d/app/dh;->Ch:Lcom/android/gallery3d/app/de;

    invoke-static {v1}, Lcom/android/gallery3d/app/de;->d(Lcom/android/gallery3d/app/de;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/dh;->Ch:Lcom/android/gallery3d/app/de;

    invoke-static {v2}, Lcom/android/gallery3d/app/de;->f(Lcom/android/gallery3d/app/de;)Ljava/lang/Runnable;

    move-result-object v2

    rem-int/lit16 v0, v0, 0x3e8

    rsub-int v0, v0, 0x3e8

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    return-void
.end method
