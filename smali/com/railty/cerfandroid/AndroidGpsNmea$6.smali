.class Lcom/railty/cerfandroid/AndroidGpsNmea$6;
.super Ljava/lang/Object;
.source "AndroidGpsNmea.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/AndroidGpsNmea;->ShowStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/AndroidGpsNmea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 278
    iput-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$6;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 280
    iget-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$6;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    iget-object p2, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$6;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {p2}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$1900(Lcom/railty/cerfandroid/AndroidGpsNmea;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$1902(Lcom/railty/cerfandroid/AndroidGpsNmea;Z)Z

    .line 281
    iget-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$6;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {p1}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$1800(Lcom/railty/cerfandroid/AndroidGpsNmea;)Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$6;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    .line 282
    invoke-static {v0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$1900(Lcom/railty/cerfandroid/AndroidGpsNmea;)Z

    move-result v0

    const-string v1, "gps_nmea"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 283
    iget-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$6;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {p1}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$300(Lcom/railty/cerfandroid/AndroidGpsNmea;)V

    .line 284
    iget-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$6;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {p1, p2}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$2002(Lcom/railty/cerfandroid/AndroidGpsNmea;Z)Z

    .line 285
    iget-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$6;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-static {p1}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$2100(Lcom/railty/cerfandroid/AndroidGpsNmea;)V

    .line 286
    return-void
.end method
