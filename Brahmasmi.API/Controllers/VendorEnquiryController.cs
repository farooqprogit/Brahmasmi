﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Brahmasmi.Models;
using Brahmasmi.Repository;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using Microsoft.AspNetCore.Diagnostics;
using Microsoft.AspNetCore.Cors;

namespace Brahmasmi.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class VendorEnquiryController : ControllerBase
    {
        private readonly ILogger<VendorEnquiryController> logger;
        private readonly IVendorEnquiryRepository vendorEnquiryRepository;
        public VendorEnquiryController(ILogger<VendorEnquiryController> _logger, IVendorEnquiryRepository _vendorEnquiryRepository)
        {
            vendorEnquiryRepository = _vendorEnquiryRepository;
            logger = _logger;
        }
        [EnableCors("CorsPolicy")]
        [HttpPost]
        public async Task<ActionResult<VendorEnquiry>> Register(VendorEnquiry vendorEnquiry)
        {
            try
            {

                var result = await Task.FromResult(vendorEnquiryRepository.VendorEnquiry(vendorEnquiry));
                //throw new Exception("Exception while fetching...");
                logger.LogInformation("end");
                return Ok(result);
            }
            catch (Exception ex)
            {
                logger.LogError($"Exception at Login Method: {ex}");
                return StatusCode(500, "Internal server error");
            }
        }
        [EnableCors("CorsPolicy")]
        [HttpGet]
        public async Task<ActionResult<VendorEnquiry>> GetVendor()
        {
            try
            {
                //logger.LogInformation(stateid.ToString());
                var result = await Task.FromResult(vendorEnquiryRepository.GetVendor());
                //throw new Exception("Exception while fetching...");
                // logger.LogInformation("end");

                return Ok(result);
            }
            catch (Exception ex)
            {
                logger.LogError($"Exception at Login Method: {ex}");
                return StatusCode(500, "Internal server error");
            }
        }
    }
}
