.class Lcom/android/gallery3d/app/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;


# instance fields
.field final synthetic nS:Lcom/android/gallery3d/app/ca;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/ca;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/gallery3d/app/aw;->nS:Lcom/android/gallery3d/app/ca;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/ca;Lcom/android/gallery3d/app/en;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/aw;-><init>(Lcom/android/gallery3d/app/ca;)V

    return-void
.end method


# virtual methods
.method public onMenuVisibilityChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/gallery3d/app/aw;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v0, p1}, Lcom/android/gallery3d/app/ca;->a(Lcom/android/gallery3d/app/ca;Z)Z

    .line 152
    iget-object v0, p0, Lcom/android/gallery3d/app/aw;->nS:Lcom/android/gallery3d/app/ca;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/ca;->o(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/gallery3d/app/aw;->nS:Lcom/android/gallery3d/app/ca;

    invoke-static {v0}, Lcom/android/gallery3d/app/ca;->a(Lcom/android/gallery3d/app/ca;)V

    .line 154
    return-void
.end method
