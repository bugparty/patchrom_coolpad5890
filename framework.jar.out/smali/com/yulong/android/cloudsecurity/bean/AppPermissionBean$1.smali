.class final Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean$1;
.super Ljava/lang/Object;
.source "AppPermissionBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    .locals 1
    .parameter "source"

    .prologue
    .line 186
    new-instance v0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;

    invoke-direct {v0, p1}, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    .locals 1
    .parameter "size"

    .prologue
    .line 190
    new-array v0, p1, [Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean$1;->newArray(I)[Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;

    move-result-object v0

    return-object v0
.end method
