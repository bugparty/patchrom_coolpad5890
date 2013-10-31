.class Lcom/android/gallery3d/app/dk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field final synthetic Ch:Lcom/android/gallery3d/app/de;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/de;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/gallery3d/app/dk;->Ch:Lcom/android/gallery3d/app/de;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1
    .parameter

    .prologue
    .line 135
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/gallery3d/app/dk;->Ch:Lcom/android/gallery3d/app/de;

    invoke-static {v0}, Lcom/android/gallery3d/app/de;->b(Lcom/android/gallery3d/app/de;)Lcom/android/gallery3d/app/df;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/df;->show()V

    .line 138
    :cond_0
    return-void
.end method
