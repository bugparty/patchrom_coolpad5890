.class Lcom/android/gallery3d/app/dj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic Ch:Lcom/android/gallery3d/app/de;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/de;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/gallery3d/app/dj;->Ch:Lcom/android/gallery3d/app/de;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/dj;->Ch:Lcom/android/gallery3d/app/de;

    invoke-static {v0}, Lcom/android/gallery3d/app/de;->b(Lcom/android/gallery3d/app/de;)Lcom/android/gallery3d/app/df;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/df;->show()V

    .line 125
    const/4 v0, 0x1

    return v0
.end method
