.class public Lcom/android/gallery3d/gadget/WidgetTypeChooser;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetTypeChooser"


# instance fields
.field private hO:Landroid/widget/RadioGroup$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    new-instance v0, Lcom/android/gallery3d/gadget/i;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/gadget/i;-><init>(Lcom/android/gallery3d/gadget/WidgetTypeChooser;)V

    iput-object v0, p0, Lcom/android/gallery3d/gadget/WidgetTypeChooser;->hO:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method


# virtual methods
.method public bp()V
    .locals 2

    .prologue
    .line 76
    const v0, 0x7f0d00a0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/gadget/WidgetTypeChooser;->setTitle(I)V

    .line 77
    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/gadget/WidgetTypeChooser;->setContentView(I)V

    .line 78
    const v0, 0x7f0a0008

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/gadget/WidgetTypeChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 79
    iget-object v1, p0, Lcom/android/gallery3d/gadget/WidgetTypeChooser;->hO:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 80
    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/gadget/WidgetTypeChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 81
    new-instance v1, Lcom/android/gallery3d/gadget/g;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/gadget/g;-><init>(Lcom/android/gallery3d/gadget/WidgetTypeChooser;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method

.method public bq()Z
    .locals 5

    .prologue
    .line 94
    const-string v0, "WidgetTypeChooser"

    const-string v1, "enter getPassword() "

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/y;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v1, 0x0

    .line 97
    const-string v0, "coolpadSystem"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/gadget/WidgetTypeChooser;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/server/systeminterface/SystemManager;

    .line 98
    invoke-virtual {v0}, Lcom/yulong/android/server/systeminterface/SystemManager;->getAppsSelected()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 100
    const-string v3, "com.android.gallery3d"

    .line 101
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 103
    if-ltz v0, :cond_0

    .line 104
    new-instance v1, Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-direct {v1, p0}, Lcom/yulong/android/view/dialog/LoginDialog;-><init>(Landroid/content/Context;)V

    .line 105
    const v0, 0x7f0d00dc

    invoke-virtual {v1, v0}, Lcom/yulong/android/view/dialog/LoginDialog;->setTitle(I)V

    .line 106
    invoke-virtual {v1}, Lcom/yulong/android/view/dialog/LoginDialog;->show()V

    .line 107
    const/4 v0, 0x1

    .line 108
    new-instance v2, Lcom/android/gallery3d/gadget/h;

    invoke-direct {v2, p0, v1}, Lcom/android/gallery3d/gadget/h;-><init>(Lcom/android/gallery3d/gadget/WidgetTypeChooser;Lcom/yulong/android/view/dialog/LoginDialog;)V

    invoke-virtual {v1, v2}, Lcom/yulong/android/view/dialog/LoginDialog;->setLoginListener(Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;)V

    .line 133
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetTypeChooser;->bq()Z

    move-result v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetTypeChooser;->bp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
