.class final synthetic Lecu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lecv;


# direct methods
.method public constructor <init>(Lecv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lecu;->a:Lecv;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lecu;->a:Lecv;

    iget-object v0, v0, Lecv;->a:Lede;

    invoke-virtual {v0}, Lede;->r()V

    return-void
.end method