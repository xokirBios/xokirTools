#: /bin/bash



#Loading
opening(){
for x in {1..15}
do
echo "starting tools... /";
sleep 0.1;
clear
echo 'Starting tools... -';
sleep 0.1;
clear
echo 'sTarting tools... \';
sleep 0.1;
clear
echo "stArting tools... /";
sleep 0.1;
clear
echo 'staRting tools... -';
sleep 0.1;
clear
echo 'starTing tools... \';
sleep 0.1;
clear
echo "startIng tools... /";
clear
done
}

#Banner
banner() {
clear
printf "        \e[1;91m 

██╗  ██╗ ██████╗ ██╗  ██╗██╗██████╗ ████████╗ ██████╗  ██████╗ ██╗     ███████╗
╚██╗██╔╝██╔═══██╗██║ ██╔╝██║██╔══██╗╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔════╝
 ╚███╔╝ ██║   ██║█████╔╝ ██║██████╔╝   ██║   ██║   ██║██║   ██║██║     ███████╗
 ██╔██╗ ██║   ██║██╔═██╗ ██║██╔══██╗   ██║   ██║   ██║██║   ██║██║     ╚════██║
██╔╝ ██╗╚██████╔╝██║  ██╗██║██║  ██║   ██║   ╚██████╔╝╚██████╔╝███████╗███████║
╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝╚═╝  ╚═╝   ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝
            Author : @xokirBios || V.0.1


\n"

}




#Update
update() {

clear
printf "[+] UPDATING \n"
sleep 7
clear
cd
rm -rf xokirTools
git clone https://github.com/xokirBios/xokirTools
cd xokirTools
chmod +x *
clear
printf "[+] SCRIPT UPDATED PLEASE WAIT ............. "
sleep 2
bash xokirTools.sh 

}



#Home
home() {

clear
apt install curl
clear
banner
printf "\e[1;93m 
   -= DNS QUERIES =-
   [01] DNS Lookup
   [02] Reverse DNS Lookup
   [03] Find DNS Host Records
   [04] Find Shared DNS Servers
   [05] Zone Transfer Online Test
   [06] Whois Lookup


   -= IP Address =-
   [07] GeoIP – IP Location Lookup
   [08] Reverse IP Lookup
   [09] TCP Port Scan
   [10] UDP Port Scan
   [11] Subnet Lookup Online
   [12] Autonomous System Lookup (AS / ASN / IP)


   -= Web Tools =-
   [13] HTTP Header Check
   [14] Extract Links From Page


   -= Other =-
   [00] Update
   [0] Exit \e[0m\n"

read -p '~# ' options



if [[ $options = 1 ]] ; then
    # Use this DNS lookup tool to easily view the standard DNS records for a domain.
    clear
    cat banner/dnslookup.txt
    echo ""
    read -p "[*] options URL : " url
    curl -s -i -H "Accept-Language: en" --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' https://api.hackertarget.com/dnslookup/?q=$url >> result/DNSLookup/$url.txt
    sleep 5s
    echo "[+] Berhasil membuat file bernama $url.txt"
    sleep 5s
    echo "[+] Membuka file bernama $url.txt"
    sleep 5s
    cat result/DNSLookup/$url.txt
fi

if [[ $options = 2 ]] ; then
    # Discover the reverse DNS entries for an IP address, a range of IP addresses or a domain name. IP based reverse DNS lookups will resolve the IP addresses in real time, while the domain name or hostname search uses a cached database (see below for details).
    clear
    cat banner/reversedns.txt
    echo ""
    read -p "[*] options URL : " url
    curl -s -i -H "Accept-Language: en" --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' https://api.hackertarget.com/reversedns/?q=$url >> result/ReverseDNSLookup/$url.txt
    sleep 5s
    echo "[+] Berhasil membuat file bernama $url.txt"
    sleep 5s
    echo "[+] Membuka file bernama $url.txt"
    sleep 5s
    cat result/ReverseDNSLookup/$url.txt
fi

if [[ $options = 3 ]] ; then
    # Find all Forward DNS (A) records for a domain. Enter a domain name and search for all subdomains associated with that domain. A handy reconnaissance tool when assessing an organisations security.
    clear
    cat banner/finddns.txt
    echo ""
    read -p "[*] options URL : " url
    curl -s -i -H "Accept-Language: en" --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' https://api.hackertarget.com/hostsearch/?q=$url >> result/FindDNSHostRecords/$url.txt
    sleep 5s
    echo "[+] Berhasil membuat file bernama $url.txt"
    sleep 5s
    echo "[+] Membuka file bernama $url.txt"
    sleep 5s
    cat result/FindDNSHostRecords/$url.txt
fi

if [[ $options = 4 ]] ; then
    # Find hosts sharing DNS servers. Discovering additional domains and host names from a shared DNS server search enables a security analyst to link related systems. Finding all related and accessible systems is the only way to truly assess the security of an organization.
    clear
    cat banner/findshare.txt
    echo ""
    read -p "[*] options URL : " url
    curl -s -i -H "Accept-Language: en" --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' https://api.hackertarget.com/findshareddns/?q=$url >> result/FindSharedDNSServers/$url.txt
    sleep 5s
    echo "[+] Berhasil membuat file bernama $url.txt"
    sleep 5s
    echo "[+] Membuka file bernama $url.txt"
    sleep 5s
    cat result/FindSharedDNSServers/$url.txt
fi

if [[ $options = 5 ]] ; then
    # Online Test of a zone transfer that will attempt to get all DNS records for a target domain. The zone transfer will be tested against all name servers (NS) for a domain.
    clear
    cat banner/zonetransfer.txt
    echo ""
    read -p "[*] options URL : " url
    curl -s -i -H "Accept-Language: en" --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' https://api.hackertarget.com/zonetransfer/?q=$url >> result/ZoneTransferOnlineTest/$url.txt
    sleep 5s
    echo "[+] Berhasil membuat file bernama $url.txt"
    sleep 5s
    echo "[+] Membuka file bernama $url.txt"
    sleep 5s
    cat result/ZoneTransferOnlineTest/$url.txt
fi

if [[ $options = 6 ]] ; then
    # Perform an Online Whois Lookup of a domain or IP address to find the registered owner, netblock, ASN and registration dates.
    clear
    cat banner/whoislook.txt
    echo ""
    read -p "[*] options URL : " url
    curl -s -i -H "Accept-Language: en" --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' https://api.hackertarget.com/whois/?q=$url >> result/WhoisLookup/$url.txt
    sleep 5s
    echo "[+] Berhasil membuat file bernama $url.txt"
    sleep 5s
    echo "[+] Membuka file bernama $url.txt"
    sleep 5s
    cat result/WhoisLookup/$url.txt
fi

# -- IP ADDRESS --

if [[ $options = 7 ]] ; then
    # Find the location of an IP address with this GeoIP lookup tool.
    clear
    cat banner/geoip.txt
    echo ""
    read -p "[*] options URL : " url
    curl -s -i -H "Accept-Language: en" --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' https://api.hackertarget.com/geoip/?q=$url >> result/GeoIP–IPLocationLookup/$url.txt
    sleep 5s
    echo "[+] Berhasil membuat file bernama $url.txt"
    sleep 5s
    echo "[+] Membuka file bernama $url.txt"
    sleep 5s
    cat result/GeoIP–IPLocationLookup/$url.txt
fi

if [[ $options = 8 ]] ; then
    # Perform a reverse IP lookup to find all A records associated with an IP address. The results can pinpoint virtual hosts being served from a web server. Information gathered can be used to expand the attack surface when identifying vulnerabilities on a server.
    clear
    cat banner/reverseip.txt
    echo ""
    read -p "[*] options URL : " url
    curl -s -i -H "Accept-Language: en" --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' https://api.hackertarget.com/reverseiplookup/?q=$url >> result/ReverseIPLookup/$url.txt
    sleep 5s
    echo "[+] Berhasil membuat file bernama $url.txt"
    sleep 5s
    echo "[+] Membuka file bernama $url.txt"
    sleep 5s
    cat result/ReverseIPLookup/$url.txt
fi

if [[ $options = 9 ]] ; then
    # A simple TCP Port Scan to quickly determine the status of an Internet facing service or firewall. Uses the powerful Nmap port scanner. Note that this scan will test for common services only (21) FTP, (22) SSH, (23) Telnet, (80) HTTP, (110) POP3, (143) IMAP, (443) HTTPS and (3389) RDP. Nmap version detection ( -sV ) is not enabled.
    clear
    cat banner/tcpport.txt
    echo ""
    read -p "[*] options URL : " url
    curl -s -i -H "Accept-Language: en" --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' https://api.hackertarget.com/nmap/?q=$url >> result/TCPPortScan/$url.txt
    sleep 5s
    echo "[+] Berhasil membuat file bernama $url.txt"
    sleep 5s
    echo "[+] Membuka file bernama $url.txt"
    sleep 5s
    cat result/TCPPortScan/$url.txt
fi

if [[ $options = 10 ]] ; then
    # Online UDP port scan available for common UDP services. The UDP port scan is part of the IP Tools range of network testing tools. The test uses the excellent Nmap Port Scanner to scan 5 of the most common UDP ports.

    # Ports tested in the quick UDP scan are DNS 53, TFTP 69, NTP 123, SNMP 161, mDNS 5353, UPNP 1900 and Memcached 11211.
    clear
    cat banner/udpscan.txt
    echo ""
    read -p "[*] options URL : " url
    curl -s -i -H "Accept-Language: en" --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' https://api.hackertarget.com/udpscan/?q=$url >> result/UDPPortScan/$url.txt
    sleep 5s
    echo "[+] Berhasil membuat file bernama $url.txt"
    sleep 5s
    echo "[+] Membuka file bernama $url.txt"
    sleep 5s
    cat result/UDPPortScan/$url.txt
fi

if [[ $options = 11 ]] ; then
    # Use this Subnet Calculator to determine the properties of a network subnet. The query can be in a number of forms including network CIDR addresses and IP with network mask.
    clear
    cat banner/subnetlook.txt
    echo ""
    read -p "[*] options URL : " url
    curl -s -i -H "Accept-Language: en" --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' https://api.hackertarget.com/subnetcalc/?q=$url >> result/SubnetLookupOnline/$url.txt
    sleep 5s
    echo "[+] Berhasil membuat file bernama $url.txt"
    sleep 5s
    echo "[+] Membuka file bernama $url.txt"
    sleep 5s
    cat result/SubnetLookupOnline/$url.txt
fi

if [[ $options = 12 ]] ; then
    # Check an Autonomous System Number (ASN) for IP ranges or lookup an IP address to get details of the AS.
    clear
    cat banner/asnlook.txt
    echo ""
    read -p "[*] options URL : " url
    curl -s -i -H "Accept-Language: en" --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' https://api.hackertarget.com/aslookup/?q=$url >> result/AutonomousSystemLookup/$url.txt
    sleep 5s
    echo "[+] Berhasil membuat file bernama $url.txt"
    sleep 5s
    echo "[+] Membuka file bernama $url.txt"
    sleep 5s
    cat result/AutonomousSystemLookup/$url.txt
fi

# -- Web Tools

if [[ $options = 13 ]] ; then
    # Review the HTTP Headers from a web server with this quick check.
    clear
    cat banner/httpheader.txt
    echo ""
    read -p "[*] options URL : " url
    curl -s -i -H "Accept-Language: en" --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' https://api.hackertarget.com/httpheaders/?q=$url >> result/HTTPHeaderCheck/$url.txt
    sleep 5s
    echo "[+] Berhasil membuat file bernama $url.txt"
    sleep 5s
    echo "[+] Membuka file bernama $url.txt"
    sleep 5s
    cat result/HTTPHeaderCheck/$url.txt
fi

if [[ $options = 14 ]] ; then
    # This tool will parse the html of a website and extract links from the page. The hrefs or "page links" are displayed in plain text for easy copying or review.
    clear
    cat banner/pagelinks.txt
    echo ""
    read -p "[*] options URL : " url
    curl -s -i -H "Accept-Language: en" --user-agent '"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801"' https://api.hackertarget.com/pagelinks/?q=$url >> result/ExtractLinksFromPage/$url.txt
    sleep 5s
    echo "[+] Berhasil membuat file bernama $url.txt"
    sleep 5s
    echo "[+] Membuka file bernama $url.txt"
    sleep 5s
    cat result/ExtractLinksFromPage/$url.txt
fi

# -- Other

if [ "$options" -eq "00" ];then
        uptade
fi

if [ "$options" -eq "0" ];then
        exit
        exit
        exit
else
        home
fi


}

opening
home