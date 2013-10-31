.class public Lcom/android/gallery3d/photoeditor/actions/RedEyeAction;
.super Lcom/android/gallery3d/photoeditor/actions/EffectAction;
.source "SourceFile"


# instance fields
.field private pp:Lcom/android/gallery3d/photoeditor/actions/TouchView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RedEyeAction;->pp:Lcom/android/gallery3d/photoeditor/actions/TouchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/TouchView;->a(Lcom/android/gallery3d/photoeditor/actions/c;)V

    .line 54
    return-void
.end method

.method public z()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;-><init>()V

    .line 40
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->az:Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/actions/EffectToolFactory;->fs()Lcom/android/gallery3d/photoeditor/actions/TouchView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/RedEyeAction;->pp:Lcom/android/gallery3d/photoeditor/actions/TouchView;

    .line 41
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/RedEyeAction;->pp:Lcom/android/gallery3d/photoeditor/actions/TouchView;

    new-instance v2, Lcom/android/gallery3d/photoeditor/actions/a;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/photoeditor/actions/a;-><init>(Lcom/android/gallery3d/photoeditor/actions/RedEyeAction;Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/actions/TouchView;->a(Lcom/android/gallery3d/photoeditor/actions/c;)V

    .line 49
    return-void
.end method
