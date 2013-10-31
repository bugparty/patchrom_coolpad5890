.class Lcom/android/gallery3d/app/dv;
.super Lcom/android/gallery3d/ui/ay;
.source "SourceFile"


# instance fields
.field final synthetic EA:Lcom/android/gallery3d/app/dd;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/dd;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/gallery3d/app/dv;->EA:Lcom/android/gallery3d/app/dd;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/ay;-><init>()V

    return-void
.end method


# virtual methods
.method public onUp()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/gallery3d/app/dv;->EA:Lcom/android/gallery3d/app/dd;

    invoke-static {v0}, Lcom/android/gallery3d/app/dd;->l(Lcom/android/gallery3d/app/dd;)V

    .line 320
    return-void
.end method

.method public s(I)V
    .locals 1
    .parameter

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/gallery3d/app/dv;->EA:Lcom/android/gallery3d/app/dd;

    invoke-static {v0, p1}, Lcom/android/gallery3d/app/dd;->a(Lcom/android/gallery3d/app/dd;I)V

    .line 315
    return-void
.end method

.method public t(I)V
    .locals 1
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/gallery3d/app/dv;->EA:Lcom/android/gallery3d/app/dd;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/dd;->t(I)V

    .line 325
    return-void
.end method
