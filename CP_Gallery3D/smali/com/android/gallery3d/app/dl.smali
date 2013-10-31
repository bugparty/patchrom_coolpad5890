.class Lcom/android/gallery3d/app/dl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic Ch:Lcom/android/gallery3d/app/de;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/de;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/gallery3d/app/dl;->Ch:Lcom/android/gallery3d/app/de;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/gallery3d/app/dl;->Ch:Lcom/android/gallery3d/app/de;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/de;->onCompletion()V

    .line 185
    return-void
.end method
