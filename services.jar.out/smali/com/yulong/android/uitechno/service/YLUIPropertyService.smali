.class Lcom/yulong/android/uitechno/service/YLUIPropertyService;
.super Lcom/yulong/android/uitechno/service/BService;
.source "UitechnoService.java"


# static fields
.field static final CFG_FILE_PATH:Ljava/lang/String; = "system/lib/uitechno/cfg.xml"

.field static final COMMON_COMPONENT:Ljava/lang/String; = "common"

.field static final TAG:Ljava/lang/String; = "uitechnoService.YLUIPropertyService"

.field static pthis:Lcom/yulong/android/uitechno/service/YLUIPropertyService;


# instance fields
.field private mCommonProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPropertiesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 917
    invoke-direct {p0, p1}, Lcom/yulong/android/uitechno/service/BService;-><init>(Landroid/content/Context;)V

    .line 914
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIPropertyService;->mPropertiesMap:Ljava/util/HashMap;

    .line 918
    sput-object p0, Lcom/yulong/android/uitechno/service/YLUIPropertyService;->pthis:Lcom/yulong/android/uitechno/service/YLUIPropertyService;

    .line 919
    return-void
.end method

.method static synthetic access$000(Lcom/yulong/android/uitechno/service/YLUIPropertyService;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 909
    invoke-direct {p0, p1}, Lcom/yulong/android/uitechno/service/YLUIPropertyService;->getComponentProperties(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private getCommonProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 997
    iget-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIPropertyService;->mCommonProperties:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 998
    const/4 v0, 0x0

    .line 1000
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yulong/android/uitechno/service/YLUIPropertyService;->mCommonProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private getComponentProperties(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .parameter "component"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 978
    iget-object v1, p0, Lcom/yulong/android/uitechno/service/YLUIPropertyService;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 979
    .local v0, componentProperties:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 980
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #componentProperties:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 981
    .restart local v0       #componentProperties:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/yulong/android/uitechno/service/YLUIPropertyService;->mPropertiesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/yulong/android/uitechno/service/YLUIPropertyService;
    .locals 1

    .prologue
    .line 921
    sget-object v0, Lcom/yulong/android/uitechno/service/YLUIPropertyService;->pthis:Lcom/yulong/android/uitechno/service/YLUIPropertyService;

    return-object v0
.end method


# virtual methods
.method getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "component"
    .parameter "key"

    .prologue
    .line 986
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 987
    :cond_0
    invoke-direct {p0, p2}, Lcom/yulong/android/uitechno/service/YLUIPropertyService;->getCommonProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 994
    :cond_1
    :goto_0
    return-object v1

    .line 989
    :cond_2
    invoke-direct {p0, p1}, Lcom/yulong/android/uitechno/service/YLUIPropertyService;->getComponentProperties(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 990
    .local v0, componentProperties:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 991
    .local v1, property:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 992
    invoke-direct {p0, p2}, Lcom/yulong/android/uitechno/service/YLUIPropertyService;->getCommonProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 960
    packed-switch p1, :pswitch_data_0

    .line 974
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yulong/android/uitechno/service/BService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 962
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 963
    .local v0, component:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 964
    .local v1, key:Ljava/lang/String;
    const-string v3, "uitechnoService.YLUIPropertyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "component == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    const-string v3, "uitechnoService.YLUIPropertyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    invoke-virtual {p0, v0, v1}, Lcom/yulong/android/uitechno/service/YLUIPropertyService;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 967
    .local v2, value:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 968
    const-string v2, ""

    .line 970
    :cond_0
    const-string v3, "uitechnoService.YLUIPropertyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProperty value == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 972
    const/4 v3, 0x1

    goto :goto_0

    .line 960
    nop

    :pswitch_data_0
    .packed-switch 0x301
        :pswitch_0
    .end packed-switch
.end method

.method systemReady()V
    .locals 6

    .prologue
    .line 925
    const-string v3, "uitechnoService.YLUIPropertyService"

    const-string v4, "systemReady() start"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 927
    .local v1, factory:Ljavax/xml/parsers/SAXParserFactory;
    const/4 v2, 0x0

    .line 929
    .local v2, parser:Ljavax/xml/parsers/SAXParser;
    :try_start_0
    const-string v3, "common"

    invoke-direct {p0, v3}, Lcom/yulong/android/uitechno/service/YLUIPropertyService;->getComponentProperties(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/yulong/android/uitechno/service/YLUIPropertyService;->mCommonProperties:Ljava/util/HashMap;

    .line 930
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 931
    new-instance v3, Ljava/io/File;

    const-string v4, "system/lib/uitechno/cfg.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/yulong/android/uitechno/service/YLUIPropertyService$1;

    invoke-direct {v4, p0}, Lcom/yulong/android/uitechno/service/YLUIPropertyService$1;-><init>(Lcom/yulong/android/uitechno/service/YLUIPropertyService;)V

    invoke-virtual {v2, v3, v4}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    :goto_0
    const-string v3, "uitechnoService.YLUIPropertyService"

    const-string v4, "systemReady() end"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    return-void

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "uitechnoService.YLUIPropertyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "propertyManager.init() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method